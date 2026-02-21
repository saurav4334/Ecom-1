<?php $__env->startSection('title','Affiliate Applications'); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Affiliate Applications</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__empty_1 = true; $__currentLoopData = $applications; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $app): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                <tr>
                                    <td>#<?php echo e($app->id); ?></td>
                                    <td><?php echo e($app->name); ?></td>
                                    <td><?php echo e($app->email); ?></td>
                                    <td><?php echo e($app->phone); ?></td>
                                    <td><?php echo e($app->status); ?></td>
                                    <td>
                                        <?php if($app->status === 'pending'): ?>
                                            <form method="post" action="<?php echo e(route('admin.affiliate.applications.approve', $app->id)); ?>" class="d-inline">
                                                <?php echo csrf_field(); ?>
                                                <select name="commission_type" class="form-control form-control-sm d-inline-block" style="width: 110px;">
                                                    <option value="percent">Percent</option>
                                                    <option value="flat">Flat</option>
                                                </select>
                                                <input type="number" step="0.01" name="commission_value" class="form-control form-control-sm d-inline-block" style="width: 90px;" value="5">
                                                <button type="submit" class="btn btn-xs btn-success">Approve</button>
                                            </form>
                                            <form method="post" action="<?php echo e(route('admin.affiliate.applications.reject', $app->id)); ?>" class="d-inline">
                                                <?php echo csrf_field(); ?>
                                                <button type="submit" class="btn btn-xs btn-warning">Reject</button>
                                            </form>
                                        <?php endif; ?>
                                        <form method="post" action="<?php echo e(route('admin.affiliate.applications.delete', $app->id)); ?>" class="d-inline" onsubmit="return confirm('Delete this application?');">
                                            <?php echo csrf_field(); ?>
                                            <button type="submit" class="btn btn-xs btn-danger">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                <tr><td colspan="6">No applications found.</td></tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\affiliate\applications.blade.php ENDPATH**/ ?>