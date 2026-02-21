<?php $__env->startSection('title','Affiliate Manage'); ?>
<?php $__env->startSection('css'); ?>
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-responsive-bs5/css/responsive.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-select-bs5/css/select.bootstrap5.min.css" rel="stylesheet" type="text/css" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Affiliate Manage</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="mb-3">
                        <a href="<?php echo e(route('admin.affiliate.create')); ?>" class="btn btn-primary">Add Affiliate</a>
                    </div>
                    <table id="datatable-buttons" class="table table-striped dt-responsive nowrap w-100">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>User</th>
                                <th>Email</th>
                                <th>Referral Code</th>
                                <th>Commission</th>
                                <th>Balance</th>
                                <th>Total Earned</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__currentLoopData = $affiliates; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $affiliate): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                    $earned = $affiliate->referrals
                                        ->whereIn('status', ['confirmed', 'paid'])
                                        ->sum('commission_amount');
                                ?>
                                <tr>
                                    <td><?php echo e($loop->iteration); ?></td>
                                    <td><?php echo e($affiliate->user->name ?? 'N/A'); ?></td>
                                    <td><?php echo e($affiliate->user->email ?? 'N/A'); ?></td>
                                    <td><?php echo e($affiliate->referral_code); ?></td>
                                    <td>
                                        <?php if(($affiliate->commission_type ?? 'percent') === 'flat'): ?>
                                            <?php echo e(number_format($affiliate->commission_value ?? 0, 2)); ?> flat
                                        <?php else: ?>
                                            <?php echo e(number_format($affiliate->commission_value ?? $affiliate->commission_rate ?? 0, 2)); ?>%
                                        <?php endif; ?>
                                    </td>
                                    <td><?php echo e(number_format($affiliate->balance, 2)); ?></td>
                                    <td><?php echo e(number_format($earned, 2)); ?></td>
                                    <td>
                                        <?php if($affiliate->status === 'active'): ?>
                                            <span class="badge bg-soft-success text-success">Active</span>
                                        <?php else: ?>
                                            <span class="badge bg-soft-danger text-danger">Inactive</span>
                                        <?php endif; ?>
                                    </td>
                                    <td>
                                        <a href="<?php echo e(route('admin.affiliate.edit', $affiliate->id)); ?>" class="btn btn-xs btn-primary waves-effect waves-light">
                                            <i class="fe-edit-1"></i>
                                        </a>
                                        <a href="<?php echo e(route('admin.affiliate.report', $affiliate->id)); ?>" class="btn btn-xs btn-info waves-effect waves-light">
                                            <i class="fe-file-text"></i>
                                        </a>
                                        <?php if($affiliate->status === 'active'): ?>
                                            <form method="post" action="<?php echo e(route('admin.affiliate.ban', $affiliate->id)); ?>" class="d-inline">
                                                <?php echo csrf_field(); ?>
                                                <button type="submit" class="btn btn-xs btn-warning waves-effect waves-light">
                                                    <i class="fe-slash"></i>
                                                </button>
                                            </form>
                                        <?php else: ?>
                                            <form method="post" action="<?php echo e(route('admin.affiliate.unban', $affiliate->id)); ?>" class="d-inline">
                                                <?php echo csrf_field(); ?>
                                                <button type="submit" class="btn btn-xs btn-success waves-effect waves-light">
                                                    <i class="fe-check"></i>
                                                </button>
                                            </form>
                                        <?php endif; ?>
                                        <form method="post" action="<?php echo e(route('admin.affiliate.destroy', $affiliate->id)); ?>" class="d-inline" onsubmit="return confirm('Delete this affiliate?');">
                                            <?php echo csrf_field(); ?>
                                            <button type="submit" class="btn btn-xs btn-danger waves-effect waves-light">
                                                <i class="fe-trash-2"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/datatables.net-select/js/dataTables.select.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/pdfmake/build/pdfmake.min.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/libs/pdfmake/build/vfs_fonts.js"></script>
<script src="<?php echo e(asset('/public/backEnd/')); ?>/assets/js/pages/datatables.init.js"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\affiliate\index.blade.php ENDPATH**/ ?>