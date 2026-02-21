<?php $__env->startSection('title','Affiliate Report'); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center justify-content-between">
                <h4 class="page-title">Affiliate Report</h4>
                <a href="<?php echo e(route('admin.affiliate.index')); ?>" class="btn btn-primary">Back to List</a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body">
                    <p class="text-muted mb-1">Affiliate</p>
                    <h5 class="mb-0"><?php echo e($affiliate->user->name ?? 'N/A'); ?></h5>
                    <small class="text-muted"><?php echo e($affiliate->user->email ?? ''); ?></small>
                    <div class="mt-3">
                        <div>Referral Code: <strong><?php echo e($affiliate->referral_code); ?></strong></div>
                        <div>Status: <strong><?php echo e($affiliate->status); ?></strong></div>
                        <div>Commission: 
                            <strong>
                                <?php if(($affiliate->commission_type ?? 'percent') === 'flat'): ?>
                                    <?php echo e(number_format($affiliate->commission_value ?? 0, 2)); ?> flat
                                <?php else: ?>
                                    <?php echo e(number_format($affiliate->commission_value ?? $affiliate->commission_rate ?? 0, 2)); ?>%
                                <?php endif; ?>
                            </strong>
                        </div>
                        <div>Balance: <strong><?php echo e(number_format($affiliate->balance, 2)); ?></strong></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-8">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-muted mb-1">Total Earnings</p>
                            <h4 class="mb-0"><?php echo e(number_format($totalEarnings, 2)); ?></h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-muted mb-1">Pending Earnings</p>
                            <h4 class="mb-0"><?php echo e(number_format($pendingEarnings, 2)); ?></h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <p class="text-muted mb-1">Paid Out</p>
                            <h4 class="mb-0"><?php echo e(number_format($paidOut, 2)); ?></h4>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Create Payout Request</h5>
                    <form action="<?php echo e(route('admin.affiliate.payout.request', $affiliate->id)); ?>" method="POST" class="row g-2">
                        <?php echo csrf_field(); ?>
                        <div class="col-md-4">
                            <input type="number" step="0.01" class="form-control" name="amount" placeholder="Amount" required>
                        </div>
                        <div class="col-md-4">
                            <button type="submit" class="btn btn-success">Create Request</button>
                        </div>
                    </form>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Payout Requests</h5>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Amount</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__empty_1 = true; $__currentLoopData = $payouts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $payout): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                <tr>
                                    <td>#<?php echo e($payout->id); ?></td>
                                    <td><?php echo e(number_format($payout->amount, 2)); ?></td>
                                    <td><?php echo e($payout->status); ?></td>
                                    <td>
                                        <?php if($payout->status === 'pending'): ?>
                                            <form method="post" action="<?php echo e(route('admin.affiliate.payout.approve', $payout->id)); ?>" class="d-inline">
                                                <?php echo csrf_field(); ?>
                                                <button type="submit" class="btn btn-xs btn-primary">Approve</button>
                                            </form>
                                        <?php endif; ?>
                                        <?php if($payout->status !== 'paid'): ?>
                                            <form method="post" action="<?php echo e(route('admin.affiliate.payout.paid', $payout->id)); ?>" class="d-inline">
                                                <?php echo csrf_field(); ?>
                                                <button type="submit" class="btn btn-xs btn-success">Mark Paid</button>
                                            </form>
                                        <?php endif; ?>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                <tr><td colspan="4">No payout requests.</td></tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Referral Details</h5>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Order</th>
                                <th>Commission</th>
                                <th>Status</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $__empty_1 = true; $__currentLoopData = $referrals; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ref): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                <tr>
                                    <td>#<?php echo e($ref->order_id); ?></td>
                                    <td><?php echo e(number_format($ref->commission_amount, 2)); ?></td>
                                    <td><?php echo e($ref->status); ?></td>
                                    <td><?php echo e($ref->created_at->format('Y-m-d')); ?></td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                <tr><td colspan="4">No referrals yet.</td></tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\affiliate\report.blade.php ENDPATH**/ ?>