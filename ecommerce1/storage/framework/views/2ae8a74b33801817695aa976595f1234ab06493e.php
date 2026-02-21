
<?php $__env->startSection('title','Product Price Manage'); ?>
<?php $__env->startSection('content'); ?>
<div class="container-fluid">
    
    <!-- start page title -->
    <div class="row">
        <div class="col-12">
            <div class="page-title-box">
                <div class="page-title-right">
                    <a href="<?php echo e(route('products.create')); ?>" class="btn btn-danger rounded-pill">
                        <i class="fe-shopping-cart"></i> Add Product
                    </a>
                </div>
                <h4 class="page-title">Product Price Manage</h4>
            </div>
        </div>
    </div>       
    <!-- end page title --> 

    <div class="row">
        <div class="col-12">
            <div class="card">
                <form action="<?php echo e(route('products.price_update')); ?>" method="POST">
                    <?php echo csrf_field(); ?>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover nowrap w-100 align-middle">
                                <thead class="bg-dark text-white">
                                    <tr>
                                        <th style="width:5%">SL</th>
                                        <th style="width:35%">Product Name</th>
                                        <th style="width:15%">Old Price</th>
                                        <th style="width:15%">New Price</th>
                                        <th style="width:15%">Stock</th>
                                    </tr>
                                </thead>               
                            
                                <tbody>
                                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr class="table-secondary">
                                        <td><?php echo e($loop->iteration); ?></td>
                                        <input type="hidden" value="<?php echo e($value->id); ?>" name="ids[]">
                                        <td>
                                            <strong><?php echo e($value->name); ?></strong>
                                            <?php if($value->variantPrices->count() > 0): ?>
                                                <br><small class="text-muted">
                                                    (<?php echo e($value->variantPrices->count()); ?> Variants)
                                                </small>
                                            <?php endif; ?>
                                        </td>
                                        <td><input type="text" class="form-control" value="<?php echo e($value->old_price); ?>" name="old_price[]"></td>
                                        <td><input type="text" class="form-control" value="<?php echo e($value->new_price); ?>" name="new_price[]"></td>
                                        <td><input type="text" class="form-control" value="<?php echo e($value->stock); ?>" name="stock[]"></td>
                                    </tr>

                                    
                                    <?php if($value->variantPrices->count() > 0): ?>
                                        <?php $__currentLoopData = $value->variantPrices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $vkey => $variant): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td></td>
                                            <td class="ps-4">
                                                <span class="badge bg-primary">
                                                    <?php echo e($variant->color?->colorName ?? 'No Color'); ?>

                                                </span>
                                                <span class="badge bg-info">
                                                    <?php echo e($variant->size?->sizeName ?? 'No Size'); ?>

                                                </span>
                                                <input type="hidden" name="variant_id[]" value="<?php echo e($variant->id); ?>">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" 
                                                       name="variant_old_price[]" 
                                                       value="<?php echo e($variant->price); ?>">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" 
                                                       name="variant_new_price[]" 
                                                       value="<?php echo e($variant->price); ?>">
                                            </td>
                                            <td>
                                                <input type="text" class="form-control" 
                                                       name="variant_stock[]" 
                                                       value="<?php echo e($variant->stock); ?>">
                                            </td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    <?php endif; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>

                                <tfoot>
                                    <tr>
                                        <td colspan="4"></td>
                                        <td>
                                            <button class="btn btn-success w-100">
                                                <i class="fa fa-save"></i> Update Price
                                            </button>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div> <!-- end card body-->
                </form>
            </div> <!-- end card -->
        </div><!-- end col-->
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\product\price_edit.blade.php ENDPATH**/ ?>