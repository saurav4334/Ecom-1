<?php $__env->startSection('title','Affiliate Form Settings'); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <h4 class="page-title">Affiliate Form Settings</h4>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-body">
                    <form action="<?php echo e(route('admin.affiliate.form_settings.update')); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <?php $fields = $setting->fields ?? []; ?>

                        <?php $__currentLoopData = $fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="border rounded p-3 mb-3">
                                <div class="d-flex justify-content-between align-items-center">
                                    <strong><?php echo e(ucfirst(str_replace('_', ' ', $key))); ?></strong>
                                    <div>
                                        <label class="me-2">
                                            <input type="checkbox" name="fields[<?php echo e($key); ?>][enabled]" value="1" <?php echo e(!empty($field['enabled']) ? 'checked' : ''); ?>>
                                            Enabled
                                        </label>
                                        <label>
                                            <input type="checkbox" name="fields[<?php echo e($key); ?>][required]" value="1" <?php echo e(!empty($field['required']) ? 'checked' : ''); ?>>
                                            Required
                                        </label>
                                    </div>
                                </div>
                                <div class="mt-2">
                                    <label class="form-label">Label</label>
                                    <input type="text" class="form-control" name="fields[<?php echo e($key); ?>][label]" value="<?php echo e($field['label'] ?? ''); ?>">
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                        <div class="mb-3">
                            <label class="form-label">Form Status</label>
                            <select class="form-control" name="status">
                                <option value="active" <?php if(($setting->status ?? 'active') === 'active'): ?> selected <?php endif; ?>>Active</option>
                                <option value="inactive" <?php if(($setting->status ?? 'active') === 'inactive'): ?> selected <?php endif; ?>>Inactive</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-success">Save Settings</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\affiliate\form_settings.blade.php ENDPATH**/ ?>