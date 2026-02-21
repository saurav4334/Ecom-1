
<?php $__env->startSection('title','Send Custom SMS'); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid mt-4">
    <div class="card shadow-sm border-0">
        <div class="card-header bg-dark text-white">
            <h5 class="mb-0">📩 Send Custom SMS</h5>
        </div>

        <div class="card-body">
            <?php if(session('error')): ?>
                <div class="alert alert-danger"><?php echo e(session('error')); ?></div>
            <?php endif; ?>

            <form action="<?php echo e(route('admin.sms.custom.send')); ?>" method="POST">
                <?php echo csrf_field(); ?>
                <div class="mb-3">
                    <label class="form-label">Phone Number (বাংলাদেশ ফরম্যাটে)</label>
                    <input type="text" name="phone" class="form-control" placeholder="017xxxxxxxx" required>
                </div>

                <div class="mb-3">
                    <label class="form-label">Message</label>
                    <textarea name="message" rows="4" class="form-control" placeholder="Write your custom message..." required></textarea>
                </div>

                <button type="submit" class="btn btn-primary">
                    <i class="fa fa-paper-plane"></i> Send SMS
                </button>
            </form>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\apiintegration\sms_custom_send.blade.php ENDPATH**/ ?>