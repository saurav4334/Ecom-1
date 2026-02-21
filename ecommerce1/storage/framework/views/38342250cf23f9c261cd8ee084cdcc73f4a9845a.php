
<?php $__env->startSection('title','Manage Coupons'); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <h4>All Coupons</h4>
            <a href="<?php echo e(route('admin.coupons.create')); ?>" class="btn btn-success btn-sm">+ Add Coupon</a>
        </div>
        <div class="card-body">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>SL</th>
                        <th>Code</th>
                        <th>Type</th>
                        <th>Value</th>
                        <th>Min Purchase</th>
                        <th>Valid From</th>
                        <th>Valid To</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $__currentLoopData = $coupons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $coupon): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <tr>
                        <td><?php echo e($key+1); ?></td>
                        <td><?php echo e($coupon->code); ?></td>
                        <td><?php echo e(ucfirst($coupon->type)); ?></td>
                        <td><?php echo e($coupon->value); ?></td>
                        <td><?php echo e($coupon->min_purchase ?? '-'); ?></td>
                        <td><?php echo e($coupon->valid_from ?? '-'); ?></td>
                        <td><?php echo e($coupon->valid_to ?? '-'); ?></td>
                        <td>
                            <span class="badge <?php echo e($coupon->status ? 'bg-success' : 'bg-danger'); ?>">
                                <?php echo e($coupon->status ? 'Active' : 'Inactive'); ?>

                            </span>
                        </td>
                        <td>
                            <a href="<?php echo e(route('admin.coupons.edit', $coupon->id)); ?>" class="btn btn-primary btn-sm">Edit</a>
                            <form action="<?php echo e(route('admin.coupons.destroy', $coupon->id)); ?>" method="POST" style="display:inline-block;">
                                <?php echo csrf_field(); ?>
                                <button class="btn btn-danger btn-sm" onclick="return confirm('Delete coupon?')">Delete</button>
                            </form>
                        </td>
                    </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\coupon\index.blade.php ENDPATH**/ ?>