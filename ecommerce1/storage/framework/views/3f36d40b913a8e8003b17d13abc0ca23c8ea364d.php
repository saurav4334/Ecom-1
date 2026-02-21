
<?php $__env->startSection('title','Customer Account'); ?>
<?php $__env->startSection('content'); ?>

<section class="comn_sec">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="cmn_menu">
                    <ul>
                        <?php $__currentLoopData = $cmnmenu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li>
                            <a href="<?php echo e(route('page',$value->slug)); ?>"><?php echo e($value->name); ?></a>
                        </li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <li>
                            <a href="<?php echo e(route('contact')); ?>">যোগাযোগ করুন</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="contact-section">
    <div class="container">

        <div class="row">
            <div class="col-sm-6">
                <div class="cont_item">
                 <a href="tel:<?php echo e($contact->hotline); ?>">
                  <i data-feather="phone"></i>
                  <?php echo e($contact->hotline); ?>

                 </a>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="cont_item">
                 <a href="">
                  <i data-feather="mail"></i>
                  <?php echo e($contact->email); ?>

                 </a>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <div class="col-sm-12">
                
            </div>
             <div class="col-sm-10">
                <div class="contact-form">
                    <h5 class="account-title">অথবা </h5>
<form action="<?php echo e(route('contact.store')); ?>" method="POST" class="row" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="col-sm-6">
        <label for="name">সম্পূর্ণ নাম *</label>
        <input type="text" name="name" class="form-control" required>
    </div>

    <div class="col-sm-6">
        <label for="phone">মোবাইল নাম্বার *</label>
        <input type="text" name="phone" class="form-control" required>
    </div>

    <div class="col-sm-12">
        <label for="email">ইমেইল *</label>
        <input type="email" name="email" class="form-control" required>
    </div>

    <div class="col-sm-12">
        <label for="subject">বিষয় *</label>
        <input type="text" name="subject" class="form-control" required>
    </div>

    <div class="col-sm-12">
        <label for="message">মেসেজ লিখুন *</label>
        <textarea name="message" class="form-control" required></textarea>
    </div>

    <div class="col-sm-12 mt-3">
        <button type="submit" class="btn btn-primary w-100">মেসেজ পাঠান</button>
    </div>
</form>

                </div>
            </div>
        </div>

    </div>
</section>
<?php $__env->stopSection(); ?>
<?php $__env->startPush('script'); ?>
<script src="<?php echo e(asset('public/frontEnd/')); ?>/js/parsley.min.js"></script>
<script src="<?php echo e(asset('public/frontEnd/')); ?>/js/form-validation.init.js"></script>
<?php $__env->stopPush(); ?>
<?php echo $__env->make('frontEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\frontEnd\layouts\pages\contact.blade.php ENDPATH**/ ?>