
<?php $__env->startSection('title','Landing Page Edit'); ?>

<?php $__env->startSection('css'); ?>
    <link href="<?php echo e(asset('public/backEnd')); ?>/assets/libs/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo e(asset('public/backEnd')); ?>/assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo e(asset('public/backEnd')); ?>/assets/libs/summernote/summernote-lite.min.css" rel="stylesheet" type="text/css" />
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid">

    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="<?php echo e(route('campaign.index')); ?>" class="btn btn-primary rounded-pill">Manage</a>
                </div>
                <h4 class="page-title">Landing Page Edit</h4>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card">
                <div class="card-body">

                    <form action="<?php echo e(route('campaign.update')); ?>"
                          method="POST"
                          class="row"
                          enctype="multipart/form-data"
                          name="editForm">
                        <?php echo csrf_field(); ?>
                        <input type="hidden" name="hidden_id" value="<?php echo e($edit_data->id); ?>">

                        
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Landing Page Title *</label>
                                <input type="text" name="name" value="<?php echo e($edit_data->name); ?>"
                                       class="form-control <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" required>
                                <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="invalid-feedback"><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                        </div>

                        
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Hero Badge Text</label>
                                <input type="text" name="hero_badge_text"
                                       value="<?php echo e($edit_data->hero_badge_text); ?>"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Hero Rating Text</label>
                                <input type="text" name="hero_rating_text"
                                       value="<?php echo e($edit_data->hero_rating_text); ?>"
                                       class="form-control">
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Hero Title</label>
                                <input type="text" name="hero_title"
                                       value="<?php echo e($edit_data->hero_title); ?>"
                                       class="form-control">
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Hero Subtitle</label>
                                <textarea name="hero_subtitle" rows="3"
                                          class="form-control"><?php echo e($edit_data->hero_subtitle); ?></textarea>
                            </div>
                        </div>


<div class="row">
    <div class="col-md-4">
        <label>হিরো লিস্ট ১</label>
        <input type="text" name="hero_list_1" value="<?php echo e($edit_data->hero_list_1); ?>" class="form-control">
    </div>

    <div class="col-md-4">
        <label>হিরো লিস্ট ২</label>
        <input type="text" name="hero_list_2" value="<?php echo e($edit_data->hero_list_2); ?>" class="form-control">
    </div>

    <div class="col-md-4">
        <label>হিরো লিস্ট ৩</label>
        <input type="text" name="hero_list_3" value="<?php echo e($edit_data->hero_list_3); ?>" class="form-control">
    </div>

    <div class="col-md-4 mt-3">
        <label>হিরো লিস্ট ৪</label>
        <input type="text" name="hero_list_4" value="<?php echo e($edit_data->hero_list_4); ?>" class="form-control">
    </div>

    <div class="col-md-4 mt-3">
        <label>হিরো লিস্ট ৫</label>
        <input type="text" name="hero_list_5" value="<?php echo e($edit_data->hero_list_5); ?>" class="form-control">
    </div>

    <div class="col-md-4 mt-3">
        <label>হিরো লিস্ট ৬</label>
        <input type="text" name="hero_list_6" value="<?php echo e($edit_data->hero_list_6); ?>" class="form-control">
    </div>
</div>

                        
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Primary Button Text</label>
                                <input type="text" name="primary_btn_text"
                                       value="<?php echo e($edit_data->primary_btn_text); ?>"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Secondary Button Text</label>
                                <input type="text" name="secondary_btn_text"
                                       value="<?php echo e($edit_data->secondary_btn_text); ?>"
                                       class="form-control">
                            </div>
                        </div>

                        
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Youtube Video URL / ID</label>
                                <input type="text" name="video" value="<?php echo e($edit_data->video); ?>"
                                       class="form-control <?php $__errorArgs = ['video'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>">
                                <?php $__errorArgs = ['video'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="invalid-feedback"><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                        </div>

                        
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Products *</label>
                                <?php
                                    $selectedProducts = array_unique(
                                        array_merge([$edit_data->product_id], $selected)
                                    );
                                ?>
                                <select name="product_id[]"
                                        class="select2 form-control <?php $__errorArgs = ['product_id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                                        multiple="multiple" data-placeholder="Choose ...">
                                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($product->id); ?>"
                                            <?php echo e(in_array($product->id, $selectedProducts) ? 'selected' : ''); ?>>
                                            <?php echo e($product->name); ?>

                                        </option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <?php $__errorArgs = ['product_id'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                <span class="invalid-feedback"><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                        </div>

                        
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Feature 1 Title</label>
                                <input type="text" name="feature1_title"
                                       value="<?php echo e($edit_data->feature1_title); ?>"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Feature 2 Title</label>
                                <input type="text" name="feature2_title"
                                       value="<?php echo e($edit_data->feature2_title); ?>"
                                       class="form-control">
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Feature 1 Text</label>
                                <textarea name="feature1_text" rows="3"
                                          class="form-control"><?php echo e($edit_data->feature1_text); ?></textarea>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group mb-3">
                                <label class="form-label">Feature 2 Text</label>
                                <textarea name="feature2_text" rows="3"
                                          class="form-control"><?php echo e($edit_data->feature2_text); ?></textarea>
                            </div>
                        </div>

                        
                        <div class="col-sm-6 mb-3">
                            <label class="form-label">Feature 1 Image</label>
                            <input type="file" name="feature1_image" class="form-control">
                            <?php if($edit_data->feature1_image): ?>
                                <img src="<?php echo e(asset($edit_data->feature1_image)); ?>" class="edit-image mt-1" height="80">
                            <?php endif; ?>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <label class="form-label">Feature 2 Image</label>
                            <input type="file" name="feature2_image" class="form-control">
                            <?php if($edit_data->feature2_image): ?>
                                <img src="<?php echo e(asset($edit_data->feature2_image)); ?>" class="edit-image mt-1" height="80">
                            <?php endif; ?>
                        </div>

                        
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Middle Banner Quote</label>
                                <input type="text" name="banner_quote"
                                       value="<?php echo e($edit_data->banner_quote); ?>"
                                       class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Middle Banner Sub Text</label>
                                <textarea name="banner_subtext" rows="2"
                                          class="form-control"><?php echo e($edit_data->banner_subtext); ?></textarea>
                            </div>
                        </div>



<div class="card mt-3">
    <div class="card-header">
        <h5>Why Section (কেন আমাদের প্রোডাক্ট সেরা?)</h5>
        <small class="text-muted">
            এখানে ৪টা কারণ/ফিচার এডিট করতে পারবেন।
        </small>
    </div>
    <div class="card-body">
        <div class="row">

            
            <div class="col-md-4 mb-3">
                <label>Why 1 Icon</label>
                <input type="text" name="why1_icon" class="form-control"
                       value="<?php echo e(old('why1_icon', $edit_data->why1_icon)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 1 Title</label>
                <input type="text" name="why1_title" class="form-control"
                       value="<?php echo e(old('why1_title', $edit_data->why1_title)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 1 Text</label>
                <textarea name="why1_text" class="form-control" rows="2"><?php echo e(old('why1_text', $edit_data->why1_text)); ?></textarea>
            </div>

            
            <div class="col-md-4 mb-3">
                <label>Why 2 Icon</label>
                <input type="text" name="why2_icon" class="form-control"
                       value="<?php echo e(old('why2_icon', $edit_data->why2_icon)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 2 Title</label>
                <input type="text" name="why2_title" class="form-control"
                       value="<?php echo e(old('why2_title', $edit_data->why2_title)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 2 Text</label>
                <textarea name="why2_text" class="form-control" rows="2"><?php echo e(old('why2_text', $edit_data->why2_text)); ?></textarea>
            </div>

            
            <div class="col-md-4 mb-3">
                <label>Why 3 Icon</label>
                <input type="text" name="why3_icon" class="form-control"
                       value="<?php echo e(old('why3_icon', $edit_data->why3_icon)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 3 Title</label>
                <input type="text" name="why3_title" class="form-control"
                       value="<?php echo e(old('why3_title', $edit_data->why3_title)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 3 Text</label>
                <textarea name="why3_text" class="form-control" rows="2"><?php echo e(old('why3_text', $edit_data->why3_text)); ?></textarea>
            </div>

            
            <div class="col-md-4 mb-3">
                <label>Why 4 Icon</label>
                <input type="text" name="why4_icon" class="form-control"
                       value="<?php echo e(old('why4_icon', $edit_data->why4_icon)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 4 Title</label>
                <input type="text" name="why4_title" class="form-control"
                       value="<?php echo e(old('why4_title', $edit_data->why4_title)); ?>">
            </div>
            <div class="col-md-4 mb-3">
                <label>Why 4 Text</label>
                <textarea name="why4_text" class="form-control" rows="2"><?php echo e(old('why4_text', $edit_data->why4_text)); ?></textarea>
            </div>

        </div>
    </div>
</div>









                        <div class="col-sm-6 mb-3">
                            <label class="form-label">Middle Banner Image 1</label>
                            <input type="file" name="banner_image1" class="form-control">
                            <?php if($edit_data->banner_image1): ?>
                                <img src="<?php echo e(asset($edit_data->banner_image1)); ?>" class="edit-image mt-1" height="80">
                            <?php endif; ?>
                        </div>
                        <div class="col-sm-6 mb-3">
                            <label class="form-label">Middle Banner Image 2</label>
                            <input type="file" name="banner_image2" class="form-control">
                            <?php if($edit_data->banner_image2): ?>
                                <img src="<?php echo e(asset($edit_data->banner_image2)); ?>" class="edit-image mt-1" height="80">
                            <?php endif; ?>
                        </div>

                        
                        <div class="col-12 mt-2">
                            <h5 class="mb-2">Customer Reviews Section</h5>
                        </div>

                        <div class="col-sm-12">
                            <div class="form-group mb-3">
                                <label class="form-label">Review Section Title</label>
                                <input type="text" name="review_section_title"
                                       value="<?php echo e($edit_data->review_section_title); ?>"
                                       class="form-control">
                            </div>
                        </div>

                        
                        <div class="col-12"><h6>Review 1</h6></div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="review1_name" value="<?php echo e($edit_data->review1_name); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">City</label>
                            <input type="text" name="review1_city" value="<?php echo e($edit_data->review1_city); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">Stars</label>
                            <input type="text" name="review1_stars" value="<?php echo e($edit_data->review1_stars); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-12 mb-3">
                            <label class="form-label">Review Text</label>
                            <textarea name="review1_text" rows="3"
                                      class="form-control"><?php echo e($edit_data->review1_text); ?></textarea>
                        </div>

                        
                        <div class="col-12"><h6>Review 2</h6></div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="review2_name" value="<?php echo e($edit_data->review2_name); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">City</label>
                            <input type="text" name="review2_city" value="<?php echo e($edit_data->review2_city); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">Stars</label>
                            <input type="text" name="review2_stars" value="<?php echo e($edit_data->review2_stars); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-12 mb-3">
                            <label class="form-label">Review Text</label>
                            <textarea name="review2_text" rows="3"
                                      class="form-control"><?php echo e($edit_data->review2_text); ?></textarea>
                        </div>

                        
                        <div class="col-12"><h6>Review 3</h6></div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="review3_name" value="<?php echo e($edit_data->review3_name); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">City</label>
                            <input type="text" name="review3_city" value="<?php echo e($edit_data->review3_city); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-4 mb-3">
                            <label class="form-label">Stars</label>
                            <input type="text" name="review3_stars" value="<?php echo e($edit_data->review3_stars); ?>"
                                   class="form-control">
                        </div>
                        <div class="col-sm-12 mb-3">
                            <label class="form-label">Review Text</label>
                            <textarea name="review3_text" rows="3"
                                      class="form-control"><?php echo e($edit_data->review3_text); ?></textarea>
                        </div>

                        
                        <div class="col-12 mt-2">
                            <h5 class="mb-2">Gallery Images</h5>
                        </div>

                        <?php for($i=1;$i<=8;$i++): ?>
                            <?php $field = "gallery_image{$i}"; ?>
                            <div class="col-sm-3 mb-3">
                                <label class="form-label">Gallery Image <?php echo e($i); ?></label>
                                <input type="file" name="<?php echo e($field); ?>" class="form-control">
                                <?php if($edit_data->$field): ?>
                                    <img src="<?php echo e(asset($edit_data->$field)); ?>" class="edit-image mt-1" height="70">
                                <?php endif; ?>
                            </div>
                        <?php endfor; ?>

                        
                        <div class="col-sm-12 mb-3">
                            <label class="form-label">Short Description</label>
                            <textarea name="short_description"
                                      class="summernote form-control"><?php echo e($edit_data->short_description); ?></textarea>
                        </div>
                        <div class="col-sm-12 mb-3">
                            <label class="form-label">Long Description</label>
                            <textarea name="description"
                                      class="summernote form-control"><?php echo e($edit_data->description); ?></textarea>
                        </div>
<div class="card mt-3">
    <div class="card-header">
        <h5>FAQ (সাধারণ জিজ্ঞাসা)</h5>
    </div>

    <div class="card-body">

        <div class="form-group mb-2">
            <label>FAQ প্রশ্ন ১:</label>
            <input type="text" name="faq_q1" class="form-control"
                value="<?php echo e($edit_data->faq_q1); ?>">
        </div>

        <div class="form-group mb-3">
            <label>FAQ উত্তর ১:</label>
            <textarea name="faq_a1" class="form-control" rows="2"><?php echo e($edit_data->faq_a1); ?></textarea>
        </div>

        <div class="form-group mb-2">
            <label>FAQ প্রশ্ন ২:</label>
            <input type="text" name="faq_q2" class="form-control"
                value="<?php echo e($edit_data->faq_q2); ?>">
        </div>

        <div class="form-group mb-3">
            <label>FAQ উত্তর ২:</label>
            <textarea name="faq_a2" class="form-control" rows="2"><?php echo e($edit_data->faq_a2); ?></textarea>
        </div>

        <div class="form-group mb-2">
            <label>FAQ প্রশ্ন ৩:</label>
            <input type="text" name="faq_q3" class="form-control"
                value="<?php echo e($edit_data->faq_q3); ?>">
        </div>

        <div class="form-group mb-3">
            <label>FAQ উত্তর ৩:</label>
            <textarea name="faq_a3" class="form-control" rows="2"><?php echo e($edit_data->faq_a3); ?></textarea>
        </div>

        <div class="form-group mb-2">
            <label>FAQ প্রশ্ন ৪:</label>
            <input type="text" name="faq_q4" class="form-control"
               value="<?php echo e($edit_data->faq_q4); ?>">
        </div>

        <div class="form-group mb-3">
            <label>FAQ উত্তর ৪:</label>
            <textarea name="faq_a4" class="form-control" rows="2"><?php echo e($edit_data->faq_a4); ?></textarea>
        </div>

    </div>
</div>

                        <div class="col-sm-6 mb-3">
                            <label class="form-label">Homepage Product Tittle</label>
                            <input type="text" name="billing_details"
                                   value="<?php echo e($edit_data->billing_details); ?>"
                                   class="form-control">
                        </div>

                        <div class="col-sm-6 mb-3">
                            <label class="d-block">Show Product Status</label>
                            <label class="switch">
                                <input type="checkbox" name="show_product" value="1"
                                       <?php if($edit_data->show_product == 1): ?> checked <?php endif; ?>>
                                <span class="slider round"></span>
                            </label>
                        </div>

                        <div class="col-12">
                            <button type="submit" class="btn btn-success">Update Campaign</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>

</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/parsleyjs/parsley.min.js"></script>
    <script src="<?php echo e(asset('public/backEnd/')); ?>/assets/js/pages/form-validation.init.js"></script>
    <script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/select2/js/select2.min.js"></script>
    <script src="<?php echo e(asset('public/backEnd/')); ?>/assets/js/pages/form-advanced.init.js"></script>
    <script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/flatpickr/flatpickr.min.js"></script>
    <script src="<?php echo e(asset('public/backEnd/')); ?>/assets/js/pages/form-pickers.init.js"></script>
    <script src="<?php echo e(asset('public/backEnd/')); ?>/assets/libs/summernote/summernote-lite.min.js"></script>
    <script>
        $(".summernote").summernote({
            placeholder: "Enter Your Text Here"
        });
        $('.select2').select2();
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\campaign\edit.blade.php ENDPATH**/ ?>