 
<?php $__env->startSection('title','SMS Gateway'); ?>
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
      <img src="<?php echo e(asset('public/frontEnd/images/bulksms.png')); ?>" alt="SMS Gateway" style="height: 35px; margin-right: 10px;">
      <h4 class="page-title">SMS Gateway</h4>
    </div>
  </div>
</div>
<!-- end page title -->

<div class="row justify-content-center">
  <div class="col-lg-12">
    <div class="card" style="border: 1px solid #ff4d4d; border-radius: 6px;">
      <div class="card-body">
        <form action="<?php echo e(route('smsgeteway.update')); ?>" method="POST" class="row" data-parsley-validate="" enctype="multipart/form-data">
          <?php echo csrf_field(); ?>
          <input type="hidden" name="id" value="<?php echo e($sms->id); ?>">
          
          <div class="col-sm-3">
            <div class="form-group mb-3">
              <label for="gateway_name" class="form-label">Gateway</label>
              <?php
                $gatewayName = old('gateway_name', $sms->gateway_name ?? 'bulksmsbd');
              ?>
              <select class="form-control" id="gateway_name" name="gateway_name">
                <option value="bulksmsbd" <?php if($gatewayName==='bulksmsbd'): ?> selected <?php endif; ?>>Bulksmsbd</option>
                <option value="mram" <?php if($gatewayName==='mram'): ?> selected <?php endif; ?>>MRAM SMS</option>
              </select>
            </div>
          </div>
          <!-- col-end -->

          <div class="col-sm-3">
            <div class="form-group mb-3">
              <label for="api_key" class="form-label">API Key *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['api_key'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="api_key" value="<?php echo e($sms->api_key ?? ''); ?>" id="api_key" required="" />
              <?php $__errorArgs = ['api_key'];
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
          <!-- col-end -->
          
          <div class="col-sm-3">
            <div class="form-group mb-3">
              <label for="serderid" class="form-label">Senderid *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['serderid'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="serderid" value="<?php echo e($sms->serderid ?? ''); ?>" id="serderid" required="" />
              <?php $__errorArgs = ['serderid'];
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

          <div class="col-sm-3">
            <div class="form-group mb-3">
              <label for="url" class="form-label">API URL *</label>
              <input type="text" class="form-control <?php $__errorArgs = ['url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="url" value="<?php echo e($sms->url ?? ''); ?>" id="url" required="" placeholder="https://sms.mram.com.bd/smsapi" />
              <small class="form-text text-muted">For MRAM: https://sms.mram.com.bd/smsapi</small>
              <?php $__errorArgs = ['url'];
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
          
          <!-- put this after Senderid input -->
          <div class="col-sm-3">
            <div class="form-group mb-3">
              <label for="message_type" class="form-label">Message Type</label>
              <?php
                $messageType = old('message_type', $sms->message_type ?? 'text');
              ?>
              <select class="form-control" id="message_type" name="message_type">
                <option value="text" <?php if($messageType==='text'): ?> selected <?php endif; ?>>Text</option>
                <option value="unicode" <?php if($messageType==='unicode'): ?> selected <?php endif; ?>>Unicode</option>
              </select>
            </div>
          </div>

          <div class="col-sm-3">
            <div class="form-group mb-3">
              <label for="label" class="form-label">Label</label>
              <?php
                $label = old('label', $sms->label ?? 'transactional');
              ?>
              <select class="form-control" id="label" name="label">
                <option value="transactional" <?php if($label==='transactional'): ?> selected <?php endif; ?>>Transactional</option>
                <option value="promotional" <?php if($label==='promotional'): ?> selected <?php endif; ?>>Promotional</option>
              </select>
              <small class="form-text text-muted">Used by MRAM SMS</small>
            </div>
          </div>

          <div class="col-sm-6">
            <div class="form-group mb-3">
              <label for="admin_phone_list" class="form-label">Admin Phone List (comma separated)</label>
              <input type="text" class="form-control <?php $__errorArgs = ['admin_phone_list'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" name="admin_phone_list" id="admin_phone_list"
                     value="<?php echo e(old('admin_phone_list', env('ADMIN_PHONE_LIST', $sms->admin_phone ?? ''))); ?>" placeholder="01711111111,01722222222" />
              <small class="form-text text-muted">Multiple numbers comma separated. e.g. 01711111111,01722222222</small>
              <?php $__errorArgs = ['admin_phone_list'];
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

          <!-- col-end -->
          

          <div class="col-sm-3 mb-3">
            <div class="form-group">
              <label for="status" class="d-block">Status</label>
              <label class="switch">
                <input type="checkbox" value="1" <?php if($sms->status==1): ?>checked <?php endif; ?> name="status" />
                <span class="slider round"></span>
              </label>
              <?php $__errorArgs = ['status'];
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
          <!-- col end -->

          <div class="col-sm-3 mb-3">
            <div class="form-group">
              <label for="order" class="d-block">Order confirm</label>
              <label class="switch">
                <input type="checkbox" value="1" <?php if($sms->order==1): ?>checked <?php endif; ?> name="order" />
                <span class="slider round"></span>
              </label>
              <?php $__errorArgs = ['order'];
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
          <!-- col end -->

          <div class="col-sm-3 mb-3">
            <div class="form-group">
              <label for="forget_pass" class="d-block">Forgot password</label>
              <label class="switch">
                <input type="checkbox" value="1" <?php if($sms->forget_pass==1): ?>checked <?php endif; ?> name="forget_pass" />
                <span class="slider round"></span>
              </label>
              <?php $__errorArgs = ['forget_pass'];
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
          <!-- col end -->

          <div class="col-sm-3 mb-3">
            <div class="form-group">
              <label for="password_g" class="d-block">Password Generator</label>
              <label class="switch">
                <input type="checkbox" value="1" <?php if($sms->password_g==1): ?>checked <?php endif; ?> name="password_g" />
                <span class="slider round"></span>
              </label>
              <?php $__errorArgs = ['password_g'];
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
          <!-- col end -->

          <div>
            <input type="submit" class="btn btn-success" value="Submit" />
          </div>
        </form>
      </div>
      <!-- end card-body-->
    </div>
    <!-- end card-->
  </div>
  <!-- end col-->
</div>
<!-------------new-start------------>
<style>
.red-border-card {
  border: 1px solid #ff4d4d !important;
  border-radius: 6px;
}

</style>
  
  
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

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\apiintegration\sms_manage.blade.php ENDPATH**/ ?>