
<?php $__env->startSection('title','Incomplete Orders'); ?>

<?php $__env->startSection('content'); ?>
<div class="container-fluid mt-4">
    <div class="card shadow-sm border-0">
        <div class="card-body p-0">
            <?php if($orders->count() > 0): ?>
            <div class="table-responsive">
                <table class="table table-striped table-hover align-middle text-center mb-0">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>Products</th>
                            <th>Total Amount</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                            <td><strong>#<?php echo e($order->id); ?></strong></td>
                            <td><?php echo e($order->name ?? '—'); ?></td>
                            <td><?php echo e($order->phone ?? '—'); ?></td>
                            <td style="max-width:200px;"><?php echo e(\Illuminate\Support\Str::limit($order->address ?? '—', 60)); ?></td>

                            
                            <td class="text-start" style="min-width:260px;">
                                <?php if(!empty($order->items) && is_array($order->items)): ?>
                                    <div class="d-flex flex-column gap-2">
                                        <?php $__currentLoopData = $order->items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $it): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div class="d-flex align-items-center border-bottom pb-1" style="gap:8px;">
                                                <?php if(!empty($it['image'])): ?>
                                                    <a href="<?php echo e($it['link'] ?? '#'); ?>" target="_blank">
                                                        <img src="<?php echo e($it['image']); ?>" width="55" height="55" class="rounded shadow-sm" style="object-fit:cover;">
                                                    </a>
                                                <?php endif; ?>
                                                <div>
                                                    <strong><?php echo e($it['name'] ?? 'Product'); ?></strong><br>
                                                    <small>Qty: <?php echo e($it['qty'] ?? 1); ?></small>
                                                    <?php if(!empty($it['price'])): ?>
                                                        <small class="text-muted d-block">৳ <?php echo e(number_format($it['price'],2)); ?></small>
                                                    <?php endif; ?>
                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                <?php else: ?>
                                    <?php if($order->product_link): ?>
                                        <a href="<?php echo e($order->product_link); ?>" target="_blank">
                                            <img src="<?php echo e(asset($order->product_image ?? '')); ?>" width="80" height="80" style="object-fit:cover;">
                                        </a>
                                    <?php else: ?>
                                        <em>—</em>
                                    <?php endif; ?>
                                <?php endif; ?>
                            </td>

                            
                            <td><strong>৳ <?php echo e(number_format($order->total_amount ?? 0, 2)); ?></strong></td>

                            
                            <td><?php echo e(optional($order->created_at)->format('d M Y, h:i A')); ?></td>

                            
                            <td>
                                <div class="d-flex flex-column gap-1">

                                    
                                    <form action="<?php echo e(route('admin.incomplete-orders.accept', $order->id)); ?>"
                                          method="POST"
                                          onsubmit="return confirm('এই ইনকমপ্লিট অর্ডার থেকে অর্ডার বানাতে চান?');">
                                        <?php echo csrf_field(); ?>
                                        <button type="submit" class="btn btn-sm btn-success w-100 mb-1">
                                            <i class="fa fa-check"></i> Accept
                                        </button>
                                    </form>

                                    
                                    <form action="<?php echo e(route('admin.incomplete-orders.destroy', $order->id)); ?>"
                                          method="POST"
                                          onsubmit="return confirm('Are you sure to delete this record?');">
                                        <?php echo csrf_field(); ?>
                                        <?php echo method_field('DELETE'); ?>
                                        <button class="btn btn-sm btn-danger w-100">
                                            <i class="fa fa-trash"></i> Delete
                                        </button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                </table>
            </div>

            <div class="d-flex justify-content-center my-3">
                <?php echo e($orders->links('pagination::bootstrap-4')); ?>

            </div>
            <?php else: ?>
            <div class="p-5 text-center text-muted">
                <i class="fa fa-info-circle fa-2x mb-3"></i>
                <h6>No incomplete orders found.</h6>
            </div>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\incomplete_orders\index.blade.php ENDPATH**/ ?>