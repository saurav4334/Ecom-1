
<?php $__env->startSection('title','Purchases'); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid">

    <div class="d-flex align-items-center mb-3">
        <h4 class="mb-0">Purchases / পারচেস</h4>
    </div>

    
    <div class="row mb-4">

       <style>
    /* সব রঙিন কার্ডের ভিতরের টেক্সট সাদা */
    .card.bg-success *, 
    .card.bg-info *, 
    .card.bg-primary *, 
    .card.bg-danger * {
        color: white !important;
    }
</style>

<div class="col-md-3 mb-3">
    <div class="card bg-success">
        <div class="card-body">
            <h6 class="mb-1">This Year (<?php echo e($currentYear); ?>)</h6>
            <h3 class="mb-0"><?php echo e(number_format($yearlyTotal,2)); ?> ৳</h3>
            <small class="d-block mt-1">এই বছরে মোট পারচেস</small>
        </div>
    </div>
</div>

<div class="col-md-3 mb-3">
    <div class="card bg-info">
        <div class="card-body">
            <h6 class="mb-1">
                This Month (<?php echo e(\Carbon\Carbon::createFromDate(now()->year, $currentMonth, 1)->format('F')); ?>)
            </h6>
            <h3 class="mb-0"><?php echo e(number_format($monthlyTotal,2)); ?> ৳</h3>
            <small class="d-block mt-1">এই মাসে মোট পারচেস</small>
        </div>
    </div>
</div>

<div class="col-md-3 mb-3">
    <div class="card bg-primary">
        <div class="card-body">
            <h6 class="mb-1">Today (<?php echo e(now()->format('d M, Y')); ?>)</h6>
            <h3 class="mb-0"><?php echo e(number_format($todayTotal,2)); ?> ৳</h3>
            <small class="d-block mt-1">আজকের মোট পারচেস</small>
        </div>
    </div>
</div>

<div class="col-md-3 mb-3">
    <div class="card bg-danger">
        <div class="card-body">
            <h6 class="mb-1">Total Supplier Due</h6>
            <h3 class="mb-0"><?php echo e(number_format($totalDue,2)); ?> ৳</h3>
            <small class="d-block mt-1">মোট বাকী</small>
        </div>
    </div>
</div>


    </div>

    <div class="row">

        
        <div class="col-md-6 mb-4">
            <div class="card shadow-sm">
                <div class="card-header">
                    <strong>+ New Purchase</strong>
                </div>
                <div class="card-body">

                    <form action="<?php echo e(route('purchases.store')); ?>" method="POST">
                        <?php echo csrf_field(); ?>

                        <div class="mb-3">
                            <label class="form-label">Supplier *</label>
                            <select name="supplier_id" class="form-control" required>
                                <option value="">-- Select --</option>
                                <?php $__currentLoopData = $suppliers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($s->id); ?>"><?php echo e($s->name); ?> (<?php echo e($s->phone); ?>)</option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                        </div>

                        <div class="mb-3 d-flex gap-2">
                            <div class="flex-fill">
                                <label class="form-label">Invoice No *</label>
                                <input type="text" name="invoice_no" class="form-control"
                                       value="<?php echo e('PUR-'.time()); ?>" required>
                            </div>
                            <div class="flex-fill">
                                <label class="form-label">Date *</label>
                                <input type="date" name="purchase_date" class="form-control"
                                       value="<?php echo e(now()->format('Y-m-d')); ?>" required>
                            </div>
                        </div>

                        <hr>

                        <h6>Product Info</h6>

                        <div class="mb-3">
                            <label class="form-label">Product *</label>
                            <select name="product_id" class="form-control" required>
                                <option value="">-- Select --</option>
                                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($p->id); ?>"><?php echo e($p->name); ?> (Stock: <?php echo e($p->stock); ?>)</option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                        </div>

                        
                        <input type="hidden" name="variant_price_id" value="">

                        <div class="mb-3 d-flex gap-2">
                            <div class="flex-fill">
                                <label class="form-label">Qty *</label>
                                <input type="number" name="qty" class="form-control" min="1" value="1" required>
                            </div>
                            <div class="flex-fill">
                                <label class="form-label">Unit Cost (৳) *</label>
                                <input type="number" step="0.01" name="unit_cost" class="form-control" required>
                            </div>
                        </div>

                        <div class="mb-3 d-flex gap-2">
                            <div class="flex-fill">
                                <label class="form-label">Discount</label>
                                <input type="number" step="0.01" name="discount" class="form-control" value="0">
                            </div>
                            <div class="flex-fill">
                                <label class="form-label">Shipping Cost</label>
                                <input type="number" step="0.01" name="shipping_cost" class="form-control" value="0">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Paid Amount (From Fund)</label>
                            <input type="number" step="0.01" name="paid_amount" class="form-control" value="0">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Note (optional)</label>
                            <textarea name="note" class="form-control" rows="3"></textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">
                            Save Purchase
                        </button>
                    </form>

                </div>
            </div>
        </div>

        
        <div class="col-md-6 mb-4">
            <div class="card shadow-sm mb-3">
                <div class="card-header">
                    <strong>📤 Export Purchase Report</strong>
                </div>
                <div class="card-body">
                    <form action="<?php echo e(route('purchases.export')); ?>" method="GET" target="_blank">
                        <div class="row">
                            <div class="col-md-4 mb-2">
                                <label class="form-label">Year</label>
                                <input type="number" name="year" class="form-control"
                                       value="<?php echo e(request('year')); ?>">
                            </div>
                            <div class="col-md-4 mb-2">
                                <label class="form-label">Month (1-12)</label>
                                <input type="number" name="month" class="form-control"
                                       value="<?php echo e(request('month')); ?>">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label class="form-label">From Date</label>
                                <input type="date" name="from_date" class="form-control"
                                       value="<?php echo e(request('from_date')); ?>">
                            </div>
                            <div class="col-md-6 mb-2">
                                <label class="form-label">To Date</label>
                                <input type="date" name="to_date" class="form-control"
                                       value="<?php echo e(request('to_date')); ?>">
                            </div>
                        </div>

                        <button type="submit" class="btn btn-outline-primary w-100 mt-2">
                            ⬇ Download CSV
                        </button>
                    </form>
                </div>
            </div>

            
        </div>
    </div>

    
    <div class="card shadow-sm">
        <div class="card-header">
            <strong>🧾 Purchase History</strong>
        </div>
        <div class="card-body table-responsive">
            <table class="table table-bordered table-hover align-middle">
                <thead class="table-light">
                <tr>
                    <th>#</th>
                    <th>Date</th>
                    <th>Invoice</th>
                    <th>Supplier</th>
                    <th class="text-end">Grand Total</th>
                    <th class="text-end">Paid</th>
                    <th class="text-end">Due</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php $__empty_1 = true; $__currentLoopData = $purchases; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                    <tr>
                        <td><?php echo e($loop->iteration + ($purchases->currentPage()-1)*$purchases->perPage()); ?></td>
                        <td><?php echo e($p->purchase_date); ?></td>
                        <td><?php echo e($p->invoice_no); ?></td>
                        <td><?php echo e(optional($p->supplier)->name); ?></td>
                        <td class="text-end"><?php echo e(number_format($p->grand_total,2)); ?></td>
                        <td class="text-end"><?php echo e(number_format($p->paid_amount,2)); ?></td>
                        <td class="text-end"><?php echo e(number_format($p->due_amount,2)); ?></td>
                        <td class="d-flex gap-1">
                            <a href="<?php echo e(route('purchases.invoice',$p->id)); ?>"
                               class="btn btn-sm btn-outline-secondary" target="_blank">
                                Invoice
                            </a>

                            <?php if($p->due_amount > 0): ?>
                                <form action="<?php echo e(route('purchases.pay_due',$p->id)); ?>" method="POST" class="d-flex">
                                    <?php echo csrf_field(); ?>
                                    <input type="number" step="0.01" name="amount"
                                           class="form-control form-control-sm me-1"
                                           placeholder="Pay" style="width:90px;">
                                    <input type="date" name="payment_date"
                                           class="form-control form-control-sm me-1"
                                           value="<?php echo e(now()->format('Y-m-d')); ?>" style="width:130px;">
                                    <button class="btn btn-sm btn-success">Pay</button>
                                </form>
                            <?php endif; ?>
                        </td>
                    </tr>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                    <tr>
                        <td colspan="8" class="text-center text-muted">
                            কোনো Purchase পাওয়া যায়নি।
                        </td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>

            <?php echo e($purchases->links()); ?>

        </div>
    </div>

</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\purchases\index.blade.php ENDPATH**/ ?>