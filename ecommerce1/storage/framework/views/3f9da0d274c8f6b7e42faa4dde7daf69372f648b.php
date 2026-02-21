
<?php $__env->startSection('title','Tag Manager Edit'); ?>
<?php $__env->startSection('css'); ?>
<link href="<?php echo e(asset('public/backEnd')); ?>/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    
  <!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box d-flex align-items-center justify-content-between">
            <h4 class="page-title d-flex align-items-center">
                <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjzazG8yJKfTrV4vqBomavtiYAhftQkrGVsk7jy2vau3dmrRkSESOQJnobZeMkypCQvJgIdNhjlvlFU2DtJI0WqB8aThbrNWZGtbsnlMO__UXgkD5MpPguSBAS9sKu1xYiPeuQaHvyJdJLnUT4EGHJu7twDG5EGTcVS81otmbpbVgcafx2uHKF0-DkeP_6J/s320/google_shopping_tag_logo_icon_159332.png" alt="Tag Manager" width="36" class="me-2">
                Google Tag Manager Edit
            </h4>
            <div class="page-title-right">
                <a href="<?php echo e(route('tagmanagers.index')); ?>" class="btn btn-primary rounded-pill">
                    <i class="fa fa-list me-1"></i> Manage
                </a>
            </div>
        </div>
    </div>
</div>
<!-- end page title -->

<div class="row justify-content-center mt-4">
    <div class="col-lg-8">
        <div class="card border-0 shadow-sm">
            <div class="card-header bg-light border-bottom d-flex align-items-center">
                <img src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjzazG8yJKfTrV4vqBomavtiYAhftQkrGVsk7jy2vau3dmrRkSESOQJnobZeMkypCQvJgIdNhjlvlFU2DtJI0WqB8aThbrNWZGtbsnlMO__UXgkD5MpPguSBAS9sKu1xYiPeuQaHvyJdJLnUT4EGHJu7twDG5EGTcVS81otmbpbVgcafx2uHKF0-DkeP_6J/s320/google_shopping_tag_logo_icon_159332.png" alt="Tag Manager Logo" width="30" class="me-2">
                <h5 class="mb-0 text-dark fw-semibold">Google Tag Manager Configuration</h5>
            </div>

            <div class="card-body">
                <form action="<?php echo e(route('tagmanagers.update')); ?>" method="POST" class="row g-3" data-parsley-validate enctype="multipart/form-data">
                    <?php echo csrf_field(); ?>
                    <input type="hidden" name="id" value="<?php echo e($edit_data->id); ?>">

                    <!-- Tag Manager ID -->
                    <div class="col-md-12">
                        <label for="code" class="form-label fw-semibold">Tag Manager ID *</label>
                        <input type="text" class="form-control <?php $__errorArgs = ['code'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" 
                               name="code" id="code" value="<?php echo e($edit_data->code); ?>" required>
                        <?php $__errorArgs = ['code'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <span class="invalid-feedback"><strong><?php echo e($message); ?></strong></span>
                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                    </div>

                    <!-- Status -->
                    <div class="col-md-12 mt-2">
                        <label for="status" class="form-label fw-semibold d-block mb-1">Status</label>
                        <label class="switch">
                            <input type="checkbox" name="status" value="1" <?php if($edit_data->status == 1): ?> checked <?php endif; ?>>
                            <span class="slider round"></span>
                        </label>
                    </div>

                    <!-- Submit -->
                    <div class="col-md-12 mt-3 text-end">
                        <button type="submit" class="btn btn-success px-4">
                            <i class="fa fa-save me-1"></i> Update Tag Manager
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Custom CSS -->
<style>
.page-title-box {
    border-bottom: 2px solid #e9ecef;
    padding-bottom: 10px;
}
.card {
    border-radius: 10px;
}
.switch {
    position: relative;
    display: inline-block;
    width: 50px;
    height: 26px;
}
.switch input { display: none; }
.slider {
    position: absolute;
    cursor: pointer;
    top: 0; left: 0; right: 0; bottom: 0;
    background-color: #ccc;
    transition: .4s;
    border-radius: 34px;
}
.slider:before {
    position: absolute;
    content: "";
    height: 20px; width: 20px;
    left: 3px; bottom: 3px;
    background-color: white;
    transition: .4s;
    border-radius: 50%;
}
input:checked + .slider {
    background-color: #28a745;
}
input:checked + .slider:before {
    transform: translateX(24px);
}
</style>

</div>
<?php $__env->stopSection(); ?>


<?php $__env->startSection('script'); ?>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/js/pages/form-validation.init.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/select2/js/select2.min.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/js/pages/form-advanced.init.js"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\tagmanager\edit.blade.php ENDPATH**/ ?>