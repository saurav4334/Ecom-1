
<?php $__env->startSection('title','Suppliers'); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid">



    <div class="row">

        
        <div class="col-md-4 mb-4">
            <div class="card shadow-sm">
                <div class="card-header">
                    <strong>
                        <?php if(isset($supplier)): ?>
                            Edit Supplier
                        <?php else: ?>
                            + Add Supplier
                        <?php endif; ?>
                    </strong>
                </div>
                <div class="card-body">

                    <form
                        action="<?php if(isset($supplier)): ?>
                                    <?php echo e(route('suppliers.update', $supplier->id)); ?>

                                <?php else: ?>
                                    <?php echo e(route('suppliers.store')); ?>

                                <?php endif; ?>"
                        method="POST"
                    >
                        <?php echo csrf_field(); ?>

                        <div class="mb-3">
                            <label class="form-label">Name *</label>
                            <input type="text"
                                   name="name"
                                   class="form-control <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>"
                                   value="<?php echo e(old('name', $supplier->name ?? '')); ?>"
                                   required>
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

                        <div class="mb-3">
                            <label class="form-label">Phone</label>
                            <input type="text"
                                   name="phone"
                                   class="form-control"
                                   value="<?php echo e(old('phone', $supplier->phone ?? '')); ?>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email"
                                   name="email"
                                   class="form-control"
                                   value="<?php echo e(old('email', $supplier->email ?? '')); ?>">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <textarea name="address"
                                      class="form-control"
                                      rows="2"><?php echo e(old('address', $supplier->address ?? '')); ?></textarea>
                        </div>

                        <button type="submit" class="btn btn-success">
                            <?php if(isset($supplier)): ?>
                                Update Supplier
                            <?php else: ?>
                                Save Supplier
                            <?php endif; ?>
                        </button>

                        <?php if(isset($supplier)): ?>
                            <a href="<?php echo e(route('suppliers.index')); ?>" class="btn btn-light ms-2">
                                Cancel
                            </a>
                        <?php endif; ?>
                    </form>

                </div>
            </div>
        </div>

        
        <div class="col-md-8 mb-4">
            <div class="card shadow-sm">
                <div class="card-header">
                    <strong>Supplier List</strong>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-bordered table-hover align-middle">
                        <thead class="table-light">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Email</th>
                            <th>Current Due</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php $__empty_1 = true; $__currentLoopData = $suppliers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                            <tr>
                                <td><?php echo e($loop->iteration + ($suppliers->currentPage()-1)*$suppliers->perPage()); ?></td>
                                <td><?php echo e($s->name); ?></td>
                                <td><?php echo e($s->phone); ?></td>
                                <td><?php echo e($s->email); ?></td>
                                <td><?php echo e(number_format($s->current_due,2)); ?> ৳</td>
                                <td>
                                    <a href="<?php echo e(route('suppliers.edit', $s->id)); ?>"
                                       class="btn btn-sm btn-outline-primary">
                                        Edit
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                            <tr>
                                <td colspan="6" class="text-center text-muted">
                                    কোনো supplier পাওয়া যায়নি।
                                </td>
                            </tr>
                        <?php endif; ?>
                        </tbody>
                    </table>

                    <?php echo e($suppliers->links()); ?>

                </div>
            </div>
        </div>

    </div>

</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\suppliers\index.blade.php ENDPATH**/ ?>