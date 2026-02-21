
<?php $__env->startSection('title','Customer Invoice'); ?>
<?php $__env->startSection('content'); ?>

<style>
    .customer-invoice { margin: 25px 0; }
    .invoice_btn{ margin-bottom: 15px; }
    td{ font-size: 16px; }

   @page { size: a4;  margin: 0mm; background:#F9F9F9 }
   @media print {
        td{ font-size: 18px; }
        header,footer,.no-print { display: none !important; }
   }
</style>

<section class="customer-invoice">
    <div class="container">
        <div class="row">

            <div class="col-sm-6">
                <a href="<?php echo e(route('customer.orders')); ?>">
                    <strong><i class="fa-solid fa-arrow-left"></i> Back To Order</strong>
                </a>
            </div>

            <div class="col-sm-6 text-end">
                <button onclick="printFunction()" class="no-print invoice_btn">
                    <i class="fa fa-print"></i>
                </button>
            </div>

            <div class="col-sm-12">

                <!-- INVOICE BOX -->
                <div class="invoice-innter" style="width: 900px;margin: 0 auto;background: #f9f9f9;overflow: hidden;padding: 30px;padding-top: 0;">

                    
                    <table style="width:100%">
                        <tr>
                            <td style="width: 40%; float: left; padding-top: 15px;">

                                <img src="<?php echo e(asset($generalsetting->white_logo)); ?>" style="margin-top:25px !important;width:150px">

                                <p style="font-size: 14px; color: #222; margin: 20px 0;">
                                    <strong>Payment Method:</strong> 
                                    <span style="text-transform: uppercase;">
                                        <?php echo e($order->payment?$order->payment->payment_method:''); ?>

                                    </span>
                                </p>

                                <div class="invoice_form">
                                    <p><strong>Invoice From:</strong></p>
                                    <p><?php echo e($generalsetting->name); ?></p>
                                    <p><?php echo e($contact->phone); ?></p>
                                    <p><?php echo e($contact->email); ?></p>
                                    <p><?php echo e($contact->address); ?></p>
									
<?php if(!empty($order->order_note) || !empty($order->note)): ?>
    <p style="font-size:16px; line-height:1.8; color:#222;">
        <strong>Order Note:</strong> <?php echo e($order->order_note ?? $order->note); ?>

    </p>
<?php endif; ?>

                                </div>
                            </td>

                            <td style="width:60%;float: left;">
                                <div class="invoice-bar" style="background:#00aef0; transform: skew(38deg); padding: 20px 60px; margin-left: 65px;">
                                    <p style="font-size: 30px; color: #fff; transform: skew(-38deg); text-align: right; font-weight: bold;">Invoice</p>
                                </div>

                                <div class="invoice-bar" style="background:#fff; transform: skew(36deg); width: 80%; margin-left: 182px; padding: 12px 32px; margin-top: 6px;text-align:right">
                                   <p style="transform: skew(-36deg);display:inline-block">Invoice Date: <strong><?php echo e($order->created_at->format('d-m-y')); ?></strong></p>
                                   <p style="transform: skew(-36deg);display:inline-block">Invoice No: <strong><?php echo e($order->invoice_id); ?></strong></p>
                                </div>

                                <div class="invoice_to" style="padding-top: 20px;">
                                    <p><strong>Invoice To:</strong></p>
                                    <p><?php echo e($order->shipping?$order->shipping->name:''); ?></p>
                                    <p><?php echo e($order->shipping?$order->shipping->phone:''); ?></p>
                                    <p><?php echo e($order->shipping?$order->shipping->address:''); ?></p>
                                    <p><?php echo e($order->shipping?$order->shipping->area:''); ?></p>
                                </div>
                            </td>
                        </tr>
                    </table>

                    
                    <table class="table" style="margin-top: 30px;">
                        <thead style="background: #00aef0; color: #fff;">
                            <tr>
                                <th>SL</th>
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
                                <td><?php echo e($value->product_name); ?></td>
                                <td>৳<?php echo e($value->sale_price); ?></td>
                                <td><?php echo e($value->qty); ?></td>
                                <td>৳<?php echo e($value->sale_price * $value->qty); ?></td>
                            </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>

                    
                    <?php
                        $subtotal = $order->orderdetails->sum('sale_price');
                        $shipping = $order->shipping_charge;
                        $discount = $order->discount;
                        $totalAmount = $order->amount;

                        // total paid (advance)
                        $advancePaid = \App\Models\Payment::where('order_id', $order->id)->sum('amount');
                        $dueAmount = $totalAmount - $advancePaid;
                    ?>

                    <div class="invoice-bottom">
                        <table class="table" style="width: 300px; float: right; margin-bottom: 30px;">
                            <tbody style="background:#00aef0; color:#fff;">

                                <tr>
                                    <td><strong>SubTotal</strong></td>
                                    <td><strong>৳<?php echo e($subtotal); ?></strong></td>
                                </tr>

                                <tr>
                                    <td><strong>Shipping(+)</strong></td>
                                    <td><strong>৳<?php echo e($shipping); ?></strong></td>
                                </tr>

                                <tr>
                                    <td><strong>Discount(-)</strong></td>
                                    <td><strong>৳<?php echo e($discount); ?></strong></td>
                                </tr>

                                <tr>
                                    <td><strong>Final Total</strong></td>
                                    <td><strong>৳<?php echo e($totalAmount); ?></strong></td>
                                </tr>

                                
                                <?php if($advancePaid > 0 && $advancePaid < $totalAmount): ?>
                                <tr>
                                    <td><strong>Advance Paid</strong></td>
                                    <td><strong>৳<?php echo e(number_format($advancePaid, 2)); ?></strong></td>
                                </tr>

                                <tr>
                                    <td><strong>Due Amount</strong></td>
                                    <td><strong>৳<?php echo e(number_format($dueAmount, 2)); ?></strong></td>
                                </tr>
                                <?php endif; ?>

                            </tbody>
                        </table>

                        <div class="terms-condition" style="overflow: hidden; width: 100%; text-align: center; padding: 20px 0;">
                            <h5 style="font-style: italic;">
                                <a href="<?php echo e(route('page',['slug'=>'terms-condition'])); ?>">Terms & Conditions</a>
                            </h5>
                            <p style="text-align: center; font-style: italic; font-size: 15px;">* This is a computer generated invoice.</p>
                        </div>
                    </div>

                </div> <!-- invoice inner -->
            </div>
        </div>
    </div>
</section>

<script>
    function printFunction() {
        window.print();
    }
</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\frontEnd\layouts\customer\invoice.blade.php ENDPATH**/ ?>