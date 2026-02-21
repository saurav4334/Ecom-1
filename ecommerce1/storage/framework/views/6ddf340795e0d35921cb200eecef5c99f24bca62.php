<?php $__env->startSection('title','Order Invoice'); ?>

<?php $__env->startSection('content'); ?>
<?php
    $barcodeValue = $invoiceSetting->barcode_value_source === 'order_id'
        ? (string) $order->id
        : ($invoiceSetting->barcode_value_source === 'transaction_id' ? (string) $order->id : (string) $order->invoice_id);

    $qrValue = $invoiceSetting->qr_value_source === 'invoice_id'
        ? (string) $order->invoice_id
        : ($invoiceSetting->qr_value_source === 'customer_phone'
            ? (string) optional($order->shipping)->phone
            : route('admin.order.invoice', ['invoice_id' => $order->invoice_id]));

    $subTotal = $order->orderdetails->sum(function ($row) {
        return ($row->sale_price ?? 0) * ($row->qty ?? 0);
    });
    $shipping = $order->shipping_charge ?? 0;
    $discount = $order->discount ?? 0;
    $finalTotal = $order->amount ?? 0;
    $advancePaid = \App\Models\Payment::where('order_id', $order->id)->sum('amount');
    $dueAmount = max(0, $finalTotal - $advancePaid);
?>

<style>
    .invoice-wrap {
        max-width: 920px;
        margin: 24px auto;
        background: #fff;
        border: 1px solid #e6ebf2;
        border-radius: 12px;
        overflow: hidden;
        color: <?php echo e($invoiceSetting->text_color); ?>;
    }
    .invoice-head {
        background: <?php echo e($invoiceSetting->header_bg_color); ?>;
        color: #fff;
        padding: 18px 24px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 10px;
        flex-wrap: wrap;
    }
    .invoice-body {
        padding: 20px 24px;
    }
    .grid-2 {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 16px;
    }
    .block {
        border: 1px solid #e6ebf2;
        border-radius: 8px;
        padding: 12px;
        background: #fbfdff;
    }
    .tbl thead th {
        background: <?php echo e($invoiceSetting->accent_color); ?>;
        color: #fff;
        border-color: <?php echo e($invoiceSetting->accent_color); ?>;
    }
    .totals {
        width: 330px;
        margin-left: auto;
    }
    .totals td {
        padding: 8px 12px;
    }
    .print-hide {
        display: inline-block;
    }
    @media print {
        header, footer, .left-side-menu, .navbar-custom, .print-hide {
            display: none !important;
        }
        .invoice-wrap {
            margin: 0;
            border: none;
            max-width: 100%;
        }
    }
</style>

<div class="container-fluid">
    <div class="row">
        <div class="col-12 d-flex justify-content-between align-items-center print-hide mb-2">
            <a href="/admin/order/all"><strong><i class="fe-arrow-left"></i> Back To Order</strong></a>
            <button onclick="window.print()" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Print</button>
        </div>
    </div>

    <div class="invoice-wrap">
        <div class="invoice-head">
            <div>
                <h4 class="mb-1">Invoice #<?php echo e($order->invoice_id); ?></h4>
                <small><?php echo e(optional($order->created_at)->format('d M Y, h:i A')); ?></small>
            </div>
            <div class="text-end">
                <?php if($invoiceSetting->show_logo): ?>
                    <img src="<?php echo e(asset($generalsetting->white_logo)); ?>" alt="logo" style="max-height:58px;">
                <?php endif; ?>
                <div class="mt-2">
                    <span class="badge bg-light text-dark"><?php echo e($order->status->name ?? 'Pending'); ?></span>
                </div>
            </div>
        </div>

        <div class="invoice-body">
            <div class="grid-2 mb-3">
                <?php if($invoiceSetting->show_company_info): ?>
                <div class="block">
                    <h6 class="mb-2">Invoice From</h6>
                    <div><?php echo e($generalsetting->name); ?></div>
                    <div><?php echo e($contact->phone ?? ''); ?></div>
                    <div><?php echo e($contact->email ?? ''); ?></div>
                    <?php if($invoiceSetting->show_order_note && (!empty($order->order_note) || !empty($order->note))): ?>
                        <div class="mt-2"><strong>Order Note:</strong> <?php echo e($order->order_note ?? $order->note); ?></div>
                    <?php endif; ?>
                </div>
                <?php endif; ?>

                <?php if($invoiceSetting->show_customer_info): ?>
                <div class="block">
                    <h6 class="mb-2">Invoice To</h6>
                    <div><?php echo e($order->shipping->name ?? ''); ?></div>
                    <div><?php echo e($order->shipping->phone ?? ''); ?></div>
                    <div><?php echo e($order->shipping->address ?? ''); ?></div>
                    <div><?php echo e($order->shipping->area ?? ''); ?></div>
                </div>
                <?php endif; ?>
            </div>

            <?php if($invoiceSetting->show_payment_info): ?>
            <div class="block mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <strong>Payment Method:</strong> <?php echo e(strtoupper(optional($order->payment)->payment_method ?? 'N/A')); ?><br>
                        <strong>Gateway:</strong> <?php echo e(ucfirst($order->payment_gateway ?? 'N/A')); ?>

                    </div>
                    <div class="col-md-6 text-md-end">
                        <strong>Payment Status:</strong>
                        <select id="payment_status_<?php echo e($order->id); ?>" class="form-control form-control-sm d-inline-block print-hide" style="width:auto;">
                            <option value="pending" <?php echo e($order->payment_status == 'pending' ? 'selected' : ''); ?>>Pending</option>
                            <option value="paid" <?php echo e($order->payment_status == 'paid' ? 'selected' : ''); ?>>Paid</option>
                            <option value="unpaid" <?php echo e($order->payment_status == 'unpaid' ? 'selected' : ''); ?>>Unpaid</option>
                            <option value="failed" <?php echo e($order->payment_status == 'failed' ? 'selected' : ''); ?>>Failed</option>
                        </select>
                        <button class="btn btn-success btn-sm print-hide" onclick="updatePaymentStatus(<?php echo e($order->id); ?>)">Update</button>
                    </div>
                </div>
            </div>
            <?php endif; ?>

            <?php if($invoiceSetting->show_barcode || $invoiceSetting->show_qr): ?>
            <div class="block mb-3 d-flex justify-content-between align-items-center">
                <div>
                    <?php if($invoiceSetting->show_barcode): ?>
                        <svg id="invoice-barcode"></svg>
                    <?php endif; ?>
                </div>
                <div id="invoice-qr"></div>
            </div>
            <?php endif; ?>

            <div class="table-responsive">
                <table class="table table-bordered tbl mb-0">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Image</th>
                            <th>Product</th>
                            <th>Price</th>
                            <th>Qty</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $order->orderdetails; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><?php echo e($loop->iteration); ?></td>
                            <td>
                                <img src="<?php echo e(asset($value->image->image ?? 'public/no-image.png')); ?>" alt="product" style="width:40px;height:40px;object-fit:cover;border-radius:6px;">
                            </td>
                            <td>
                                <?php echo e($value->product_name); ?>

                                <?php if($value->size || $value->color): ?>
                                    <br>
                                    <small class="text-muted">
                                        <?php if($value->size): ?> Size: <?php echo e($value->size->name); ?> <?php endif; ?>
                                        <?php if($value->size && $value->color): ?> | <?php endif; ?>
                                        <?php if($value->color): ?> Color: <?php echo e($value->color->name); ?> <?php endif; ?>
                                    </small>
                                <?php endif; ?>
                            </td>
                            <td>৳ <?php echo e(number_format($value->sale_price, 2)); ?></td>
                            <td><?php echo e($value->qty); ?></td>
                            <td>৳ <?php echo e(number_format($value->sale_price * $value->qty, 2)); ?></td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>

            <table class="table table-bordered totals mt-3">
                <tr><td><strong>Sub-total</strong></td><td><strong>৳ <?php echo e(number_format($subTotal, 2)); ?></strong></td></tr>
                <tr><td><strong>Shipping(+)</strong></td><td><strong>৳ <?php echo e(number_format($shipping, 2)); ?></strong></td></tr>
                <tr><td><strong>Discount(-)</strong></td><td><strong>৳ <?php echo e(number_format($discount, 2)); ?></strong></td></tr>
                <tr style="background: <?php echo e($invoiceSetting->accent_color); ?>; color:#fff;">
                    <td><strong>Final Total</strong></td><td><strong>৳ <?php echo e(number_format($finalTotal, 2)); ?></strong></td>
                </tr>
                <?php if($advancePaid > 0 && $advancePaid < $finalTotal): ?>
                <tr><td><strong>Advance Paid</strong></td><td><strong>৳ <?php echo e(number_format($advancePaid, 2)); ?></strong></td></tr>
                <tr><td><strong>Due Amount</strong></td><td><strong>৳ <?php echo e(number_format($dueAmount, 2)); ?></strong></td></tr>
                <?php endif; ?>
            </table>

            <?php if($invoiceSetting->show_terms || !empty($invoiceSetting->custom_footer_text)): ?>
            <div class="text-center mt-4 pt-3" style="border-top:1px solid #e5e7eb;">
                <?php if($invoiceSetting->show_terms): ?>
                    <h6 class="mb-1"><a href="<?php echo e(route('page',['slug'=>'terms-condition'])); ?>">Terms & Conditions</a></h6>
                    <p class="mb-1"><em>* <?php echo e($invoiceSetting->terms_text ?: 'This is a computer generated invoice, does not require any signature.'); ?></em></p>
                <?php endif; ?>
                <?php if(!empty($invoiceSetting->custom_footer_text)): ?>
                    <p class="mb-0"><?php echo e($invoiceSetting->custom_footer_text); ?></p>
                <?php endif; ?>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/jsbarcode@3.11.6/dist/JsBarcode.all.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
<script>
function updatePaymentStatus(orderId) {
    let status = document.getElementById('payment_status_' + orderId).value;
    fetch('<?php echo e(route("admin.order.updatePaymentStatus")); ?>', {
        method: 'POST',
        headers: {
            'X-CSRF-TOKEN': '<?php echo e(csrf_token()); ?>',
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ order_id: orderId, payment_status: status })
    })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            toastr.success(data.message, 'Success');
        } else {
            toastr.error(data.message || 'Update failed', 'Error');
        }
    })
    .catch(() => toastr.error('Something went wrong!', 'Error'));
}

document.addEventListener('DOMContentLoaded', function () {
    <?php if($invoiceSetting->show_barcode): ?>
    JsBarcode("#invoice-barcode", "<?php echo e($barcodeValue); ?>", {
        format: "CODE128",
        lineColor: "<?php echo e($invoiceSetting->accent_color); ?>",
        width: 1.6,
        height: 42,
        displayValue: true,
        fontSize: 12
    });
    <?php endif; ?>

    <?php if($invoiceSetting->show_qr): ?>
    new QRCode(document.getElementById("invoice-qr"), {
        text: "<?php echo e($qrValue); ?>",
        width: 88,
        height: 88
    });
    <?php endif; ?>
});
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\order\invoice.blade.php ENDPATH**/ ?>