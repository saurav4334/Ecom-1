<!DOCTYPE html>
<html>
<head>
    <title>New Order Placed - Admin Notification</title>
</head>
<body>
    <h1>New Order Notification</h1>
    <p>A new order has been placed. Here are the details:</p>

    
    <p><strong>Order Status:</strong> <?php echo e($order->order_status == 1 ? 'Pending' : 'Completed'); ?></p>
    <table class="body-wrap" style="background:#fff; width: 100%; margin: 0;;padding:0 30px">
        <tbody>
            <tr style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 25px; margin: 0;border:0">
                <td style="font-family: 'Helvetica Neue',Helvetica,Arial,sans-serif; box-sizing: border-box; font-size: 14px; margin: 0;">
                   <h3 style="color:#4DBC60;padding-bottom:10px">[Order # <?php echo e($order->invoice_id); ?>] (<?php echo e($order->created_at->format('d M Y')); ?>)</h3>
                 </td>
            </tr>
        </tbody>
    </table>
    <table style="width:100%;border:0;padding:0 30px">
       <thead>
           <tr>
               <td style="border:1px solid #ddd;padding:10px;font-weight:800">Product</td>
               <td style="border:1px solid #ddd;padding:10px;font-weight:800">Quantity</td>
               <td style="border:1px solid #ddd;padding:10px;font-weight:800">Price</td>
           </tr>
       </thead>
       <tbody>
           <?php $__currentLoopData = $order->orderdetails; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%"><?php echo e($value->product_name); ?></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%">x <?php echo e($value->qty); ?></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%"><?php echo e($value->qty*$value->sale_price); ?></td>
            </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
       </tbody>
    </table>
    
    <table style="width:100%;border: 0px ;padding:0 30px">
       <tbody>
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Subtotal</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;"><?php echo e($order->amount - ($order->shipping_charge+$order->discount)); ?></td>
            </tr>
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Shipping Charge</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;"><?php echo e($order->shipping_charge); ?></td>
            </tr>
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Method</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;"><?php echo e($order->payment?$order->payment->payment_method:''); ?></td>
            </tr>
            
            <tr>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-right: 0px solid #fff;font-weight:800">Total</td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;border-left: 0px solid #fff;"></td>
                <td style="border:1px solid #ddd;padding:10px;width:33.33%;border-top: 0px solid #fff;"><?php echo e($order->amount); ?></td>
            </tr>
       </tbody>
    </table>
    <!-- ./ email template -->
    <table style="padding:10px 0px;margin-bottom:25px;text-align:center !important;width:100%">
        <tbody>
            <tr>
                <td style="padding:20px 0;font-weight:800;color:#4DBC60;font-size:22px">Billing Address</td>
            </tr>
            <tr><td><?php echo e($shipping->name??''); ?></td></tr>
            <tr><td><?php echo e($shipping->phone??''); ?></td></tr>
            <tr><td><?php echo e($shipping->address??''); ?></td></tr>
            <tr><td><?php echo e($shipping->area??''); ?></td></tr>
            <tr><td><?php echo e($shipping->email??''); ?></td></tr>
        </tbody>
    </table>

  

    <p>Thank you for reviewing this order. Please check the admin panel for more details or to update the order status.</p>

    <p>Best regards,</p>
    <p><?php echo e(config('app.name')); ?> Team</p>
</body>
</html>
<?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\emails\order_place_for_admin.blade.php ENDPATH**/ ?>