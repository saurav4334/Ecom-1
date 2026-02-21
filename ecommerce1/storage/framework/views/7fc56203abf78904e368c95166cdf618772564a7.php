
<?php $__env->startSection('title','Edit Coupon'); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="card">
        <div class="card-header d-flex justify-content-between align-items-center">
            <h4>Edit Coupon</h4>
            <a href="<?php echo e(route('admin.coupons.index')); ?>" class="btn btn-secondary btn-sm">← Back</a>
        </div>
        <div class="card-body">

            
            <form action="<?php echo e(route('admin.coupons.update', $coupon->id)); ?>" method="POST">
                <?php echo csrf_field(); ?>
                
                
                

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Coupon Code <span class="text-danger">*</span></label>
                        <input type="text" name="code" class="form-control"
                            value="<?php echo e(old('code', $coupon->code)); ?>" required>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label>Type <span class="text-danger">*</span></label>
                        <select name="type" class="form-control" required>
                            <option value="percent" <?php echo e($coupon->type == 'percent' ? 'selected' : ''); ?>>Percentage (%)</option>
                            <option value="flat" <?php echo e($coupon->type == 'flat' ? 'selected' : ''); ?>>Flat (৳)</option>
                        </select>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label>Value <span class="text-danger">*</span></label>
                        <input type="number" name="value" class="form-control" step="0.01"
                            value="<?php echo e(old('value', $coupon->value)); ?>" required>
                    </div>

                    <div class="col-md-6 mb-3">
                        <label>Minimum Purchase (optional)</label>
                        <input type="number" name="min_purchase" class="form-control" step="0.01"
                            value="<?php echo e(old('min_purchase', $coupon->min_purchase)); ?>">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label>Valid From</label>
                        <input type="date" name="valid_from" class="form-control"
                            value="<?php echo e(old('valid_from', $coupon->valid_from)); ?>">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label>Valid To</label>
                        <input type="date" name="valid_to" class="form-control"
                            value="<?php echo e(old('valid_to', $coupon->valid_to)); ?>">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label>Status</label>
                        <select name="status" class="form-control">
                            <option value="1" <?php echo e($coupon->status == 1 ? 'selected' : ''); ?>>Active</option>
                            <option value="0" <?php echo e($coupon->status == 0 ? 'selected' : ''); ?>>Inactive</option>
                        </select>
                    </div>

                    <div class="col-md-12 mt-3">
                        <button type="submit" class="btn btn-primary w-100">💾 Update Coupon</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\coupon\edit.blade.php ENDPATH**/ ?>