<?php $__env->startSection('title','Affiliate Dashboard'); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box d-flex align-items-center">
                <h4 class="page-title">Affiliate Dashboard</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xl-4 col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="flex-grow-1">
                            <p class="text-muted mb-1">Total Earnings</p>
                            <h4 class="mb-0"><?php echo e(number_format($totalEarnings, 2)); ?></h4>
                        </div>
                        <div class="text-primary fs-2">
                            ৳
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center">
                        <div class="flex-grow-1">
                            <p class="text-muted mb-1">Pending Earnings</p>
                            <h4 class="mb-0"><?php echo e(number_format($pendingEarnings, 2)); ?></h4>
                        </div>
                        <div class="text-warning fs-2">
                            ৳
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-md-12">
            <div class="card">
                <div class="card-body">
                    <p class="text-muted mb-2">Commission</p>
                    <h4 class="mb-0">
                        <?php if(($affiliate->commission_type ?? 'percent') === 'flat'): ?>
                            <?php echo e(number_format($affiliate->commission_value ?? 0, 2)); ?> flat
                        <?php else: ?>
                            <?php echo e(number_format($affiliate->commission_value ?? $affiliate->commission_rate ?? 0, 2)); ?>%
                        <?php endif; ?>
                    </h4>
                    <small class="text-muted d-block mt-2">Current balance: <?php echo e(number_format($affiliate->balance, 2)); ?></small>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xl-8">
            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Your Referral Link</h5>
                    <div class="input-group">
                        <input type="text" class="form-control" value="<?php echo e($referralLink); ?>" readonly>
                        <button class="btn btn-primary" type="button" onclick="navigator.clipboard.writeText('<?php echo e($referralLink); ?>')">
                            Copy
                        </button>
                    </div>
                    <small class="text-muted d-block mt-2">Share this link to earn commissions.</small>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\affiliate\dashboard.blade.php ENDPATH**/ ?>