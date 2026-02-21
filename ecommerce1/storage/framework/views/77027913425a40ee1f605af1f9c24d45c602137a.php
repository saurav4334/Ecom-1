
<?php $__env->startSection('title','Customer Account'); ?>
<?php $__env->startSection('content'); ?>

<section class="customer-section">
    <div class="container">
        <div class="row">

            <div class="col-sm-3">
                <div class="customer-sidebar">
                    <?php echo $__env->make('frontEnd.layouts.customer.sidebar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>

            <div class="col-sm-9">

                <div class="customer-content">
                    <h5 class="account-title">My Order</h5>

                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Sl</th>
                                    <th>Date</th>
                                    <th>Total Amount</th>
                                    <th>Advance Paid</th>
                                    <th>Due Amount</th>
                                    <th>Status</th>
                                    <th>Download</th> 
                                    <th>Action</th>
                                </tr>
                            </thead>

                            <tbody>

                                <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

                                <?php
                                    // ------------------------------
                                    // ADVANCE PAYMENT CALCULATION
                                    // ------------------------------

                                    $advancePaid = 0;

                                    if ($value->payment_gateway) {
                                        $advancePaid = \App\Models\Payment::where('order_id', $value->id)
                                                        ->where('payment_method', $value->payment_gateway)
                                                        ->sum('amount');
                                    }

                                    $dueAmount = $value->amount - $advancePaid;

                                    // ⭐ এই অর্ডারের ডিজিটাল ডাউনলোড
                                    $digitalDownloads = \App\Models\DigitalDownload::where('order_id', $value->id)->get();

                                ?>

                                <tr>
                                    <td><?php echo e($loop->iteration); ?></td>

                                    <td><?php echo e($value->created_at->format('d-m-y')); ?></td>

                                    <td>৳<?php echo e(number_format($value->amount, 2)); ?></td>

                                    <td>
                                        <?php if($advancePaid > 0): ?>
                                            <span class="text-success">
                                                <strong>৳<?php echo e(number_format($advancePaid, 2)); ?></strong>
                                            </span>
                                        <?php else: ?>
                                            <span class="text-muted">৳0.00</span>
                                        <?php endif; ?>
                                    </td>

                                    <td>
                                        <?php if($dueAmount > 0): ?>
                                            <span class="text-danger">
                                                <strong>৳<?php echo e(number_format($dueAmount, 2)); ?></strong>
                                            </span>
                                        <?php else: ?>
                                            <span class="text-muted">৳0.00</span>
                                        <?php endif; ?>
                                    </td>

                                    <td><?php echo e($value->status ? $value->status->name : ''); ?></td>

                                    
                                    <td>
                                        <?php if($digitalDownloads->count() > 0): ?>

                                            
                                            <?php if($value->payment_status == 'paid'): ?>

                                                <?php $__currentLoopData = $digitalDownloads; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $dl): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <a href="<?php echo e(route('digital.download', $dl->token)); ?>"
                                                       class="btn btn-sm btn-success" target="_blank">
                                                        Download
                                                    </a><br>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                                            <?php else: ?>
                                                
                                                <span class="text-danger"><strong>Unpaid</strong></span>
                                            <?php endif; ?>

                                        <?php endif; ?>
                                    </td>

                                    <td>
                                        <a href="<?php echo e(route('customer.invoice',['id'=>$value->id])); ?>" class="invoice_btn">
                                            <i class="fa-solid fa-eye"></i>
                                        </a>

                                        <?php if($value->admin_note): ?>
                                            <a href="<?php echo e(route('customer.order_note',['id'=>$value->id])); ?>" class="invoice_btn bg-primary">
                                                <i class="fa-solid fa-pencil"></i>
                                            </a>
                                        <?php endif; ?>
                                    </td>

                                </tr>

                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </tbody>

                        </table>
                    </div>

                </div>

            </div>

        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\frontEnd\layouts\customer\orders.blade.php ENDPATH**/ ?>