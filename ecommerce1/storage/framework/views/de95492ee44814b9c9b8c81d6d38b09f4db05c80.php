
<?php $__env->startSection('title', 'Sitemap Generator'); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid mt-4">
    <div class="card shadow-sm border-0">
        <div class="card-header bg-dark text-white d-flex justify-content-between align-items-center">
            <h5 class="mb-0">🗺 Sitemap Generator</h5>
            <a href="<?php echo e(url('sitemap.xml')); ?>" target="_blank" class="btn btn-light btn-sm">View Sitemap</a>
        </div>

        <div class="card-body text-center">
            <?php if(session('success')): ?>
                <div class="alert alert-success"><?php echo e(session('success')); ?></div>
            <?php endif; ?>

            <p class="mb-3 text-muted">
                Click the button below to generate or update your <strong>sitemap.xml</strong> file.
            </p>

            <form action="<?php echo e(route('admin.sitemap.generate')); ?>" method="POST">
                <?php echo csrf_field(); ?>
                <button type="submit" class="btn btn-primary btn-lg px-4">
                    <i class="fa fa-sync-alt"></i> Generate Sitemap
                </button>
            </form>
        </div>
    </div>
</div>


<script>
setInterval(() => {
    fetch('<?php echo e(route('admin.sitemap.generate')); ?>', { 
        method: 'POST', 
        headers: { 'X-CSRF-TOKEN': '<?php echo e(csrf_token()); ?>' } 
    })
    .then(() => console.log("🕒 Sitemap auto-updated!"));
}, 3600000); // প্রতি ১ ঘণ্টা = 1000*60*60
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\sitemap\index.blade.php ENDPATH**/ ?>