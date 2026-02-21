 
<?php $__env->startSection('title','Payment Gateway'); ?>
<?php $__env->startSection('css'); ?>
<style>
  .increment_btn,
  .remove_btn {
    margin-top: -17px;
    margin-bottom: 10px;
  }
</style>
<link href="<?php echo e(asset('public/backEnd')); ?>/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo e(asset('public/backEnd')); ?>/assets/libs/summernote/summernote-lite.min.css" rel="stylesheet" type="text/css" />
<?php $__env->stopSection(); ?> <?php $__env->startSection('content'); ?>
<div class="container-fluid">
<!-- start page title -->
<div class="row">
  <div class="col-12">
    <div class="page-title-box d-flex align-items-center">
      <h4 class="page-title d-flex align-items-center gap-2">
        <img src="<?php echo e(asset('public/frontEnd/images/bkash.svg')); ?>"
             alt="Bkash Logo"
             style="height:28px; width:auto; margin-right:8px;">
        Bkash
      </h4>
    </div>
  </div>
</div>
<!-- end page title -->

<div class="row justify-content-center">
  <div class="col-lg-12">
    <div class="card border border-danger shadow-sm">
      <div class="card-body">
        <form action="<?php echo e(route('paymentgeteway.update')); ?>" method="POST" class="row" data-parsley-validate enctype="multipart/form-data">
          <?php echo csrf_field(); ?>
          <input type="hidden" name="id" value="<?php echo e($bkash->id); ?>">

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="username" class="form-label">User Name *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="username" id="username" value="<?php echo e($bkash->username); ?>" required />
              <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="app_key" class="form-label">App Key *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['app_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="app_key" id="app_key" value="<?php echo e($bkash->app_key); ?>" required />
              <?php $__errorArgs = ['app_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="app_secret" class="form-label">App Secret *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['app_secret'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="app_secret" id="app_secret" value="<?php echo e($bkash->app_secret); ?>" required />
              <?php $__errorArgs = ['app_secret'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="base_url" class="form-label">Base Url *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['base_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="base_url" id="base_url" value="<?php echo e($bkash->base_url); ?>" required />
              <?php $__errorArgs = ['base_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="password" class="form-label">Password *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="password" id="password" value="<?php echo e($bkash->password); ?>" required />
              <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-3 mb-3">
            <div class="form-group">
              <label for="status" class="d-block">Status</label>
              <label class="switch">
                <input type="checkbox" value="1" <?php if($bkash->status==1): ?> checked <?php endif; ?> name="status" />
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="col-12">
            <button type="submit" class="btn btn-success mt-2">
              <i class="fas fa-save"></i> Update Bkash Settings
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

  
  
    <!------------- UddoktaPay Integration Start ------------>
  <div class="row mt-4">
    <div class="col-12">
      <div class="page-title-box">
        <h4 class="page-title">
          <img src="<?php echo e(asset('public/frontEnd/images/uddokta.png')); ?>" alt="UddoktaPay Logo" style="height:28px;margin-right:6px;">
          UddoktaPay
        </h4>
      </div>
    </div>
  </div>

  <div class="row justify-content-center">
    <div class="col-lg-12">
      <div class="card border border-success">
        <div class="card-body">
          <form action="<?php echo e(route('paymentgeteway.update')); ?>" method="POST" class="row" data-parsley-validate enctype="multipart/form-data">
            <?php echo csrf_field(); ?>
            <input type="hidden" name="id" value="<?php echo e($uddoktapay->id ?? ''); ?>">
            
            <div class="col-sm-6">
              <div class="form-group mb-3">
                <label for="app_key" class="form-label">UddoktaPay API Key *</label>
                <input type="text" class="form-control <?php $__errorArgs = ['app_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                       name="app_key" id="app_key"
                       value="<?php echo e($uddoktapay->app_key ?? ''); ?>"
                       placeholder="Enter your UDDOKTAPAY_API_KEY" required />
                <?php $__errorArgs = ['app_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                  <span class="invalid-feedback" role="alert">
                    <strong><?php echo e($message); ?></strong>
                  </span>
                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
              </div>
            </div>

            <div class="col-sm-6">
              <div class="form-group mb-3">
                <label for="base_url" class="form-label">UddoktaPay API URL *</label>
                <input type="text" class="form-control <?php $__errorArgs = ['base_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                       name="base_url" id="base_url"
                       value="<?php echo e($uddoktapay->base_url ?? 'https://sandbox.uddoktapay.com/api/checkout-v2'); ?>"
                       placeholder="Enter your UDDOKTAPAY_API_URL" required />
                <?php $__errorArgs = ['base_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                  <span class="invalid-feedback" role="alert">
                    <strong><?php echo e($message); ?></strong>
                  </span>
                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
              </div>
            </div>

            <div class="col-sm-3 mb-3">
              <div class="form-group">
                <label for="status" class="d-block">Status</label>
                <label class="switch">
                  <input type="checkbox" value="1" name="status"
                    <?php if(isset($uddoktapay) && $uddoktapay->status == 1): ?> checked <?php endif; ?> />
                  <span class="slider round"></span>
                </label>
                <span class="ms-2"><?php echo e((isset($uddoktapay) && $uddoktapay->status == 1) ? 'Enabled' : 'Disabled'); ?></span>
              </div>
            </div>

            <div class="col-12">
              <button type="submit" class="btn btn-success mt-2">Save UddoktaPay Settings</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <!------------- UddoktaPay Integration End ------------->

 <!-- start page title -->
<div class="row">
  <div class="col-12">
    <div class="page-title-box d-flex align-items-center">
      <h4 class="page-title d-flex align-items-center gap-2">
        <img src="<?php echo e(asset('public/frontEnd/images/shurjoPay.png')); ?>"
             alt="Shurjopay Logo"
             style="height:28px; width:auto; margin-right:8px;">
        Shurjopay
      </h4>
    </div>
  </div>
</div>
<!-- end page title -->

<div class="row justify-content-center">
  <div class="col-lg-12">
    <div class="card border border-primary shadow-sm">
      <div class="card-body">
        <form action="<?php echo e(route('paymentgeteway.update')); ?>" method="POST" class="row" data-parsley-validate enctype="multipart/form-data">
          <?php echo csrf_field(); ?>
          <input type="hidden" name="id" value="<?php echo e($shurjopay->id); ?>">

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="username" class="form-label">User Name *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="username" id="username"
                     value="<?php echo e($shurjopay->username); ?>" required />
              <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="prefix" class="form-label">Prefix *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['prefix'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="prefix" id="prefix"
                     value="<?php echo e($shurjopay->prefix); ?>" required />
              <?php $__errorArgs = ['prefix'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="success_url" class="form-label">Success URL *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['success_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="success_url" id="success_url"
                     value="<?php echo e($shurjopay->success_url); ?>" required />
              <?php $__errorArgs = ['success_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="return_url" class="form-label">Return URL *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['return_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="return_url" id="return_url"
                     value="<?php echo e($shurjopay->return_url); ?>" required />
              <?php $__errorArgs = ['return_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="base_url" class="form-label">Base URL *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['base_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="base_url" id="base_url"
                     value="<?php echo e($shurjopay->base_url); ?>" required />
              <?php $__errorArgs = ['base_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-4">
            <div class="form-group mb-3">
              <label for="password" class="form-label">Password *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                     name="password" id="password"
                     value="<?php echo e($shurjopay->password); ?>" required />
              <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
              <span class="invalid-feedback" role="alert"><strong><?php echo e($message); ?></strong></span>
              <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
            </div>
          </div>

          <div class="col-sm-3 mb-3">
            <div class="form-group">
              <label for="status" class="d-block">Status</label>
              <label class="switch">
                <input type="checkbox" value="1" <?php if($shurjopay->status==1): ?> checked <?php endif; ?> name="status" />
                <span class="slider round"></span>
              </label>
            </div>
          </div>

          <div class="col-12">
            <button type="submit" class="btn btn-primary mt-2">
              <i class="fas fa-save"></i> Update Shurjopay Settings
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

  
</div>
<?php $__env->stopSection(); ?> <?php $__env->startSection('script'); ?>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/parsleyjs/parsley.min.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/js/pages/form-validation.init.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/select2/js/select2.min.js"></script>
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/js/pages/form-advanced.init.js"></script>
<!-- Plugins js -->
<script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs//summernote/summernote-lite.min.js"></script>
<script>
  $(".summernote").summernote({
    placeholder: "Enter Your Text Here",
  });
</script>
<script type="text/javascript">
  $(document).ready(function () {
    $(".btn-increment").click(function () {
      var html = $(".clone").html();
      $(".increment").after(html);
    });
    $("body").on("click", ".btn-danger", function () {
      $(this).parents(".control-group").remove();
    });
  });
</script>
<script type="text/javascript">
  $(document).ready(function () {
    $(".increment_btn").click(function () {
      var html = $(".clone_price").html();
      $(".increment_price").after(html);
    });
    $("body").on("click", ".remove_btn", function () {
      $(this).parents(".increment_control").remove();
    });

    $(".select2").select2();
  });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\apiintegration\pay_manage.blade.php ENDPATH**/ ?>