
<?php $__env->startSection('title', 'Customer Checkout'); ?>

<?php $__env->startPush('css'); ?>
<link rel="stylesheet" href="<?php echo e(asset('public/frontEnd/css/select2.min.css')); ?>" />
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
<section class="chheckout-section">
    <?php
        $subtotal = Cart::instance('shopping')->subtotal();
        $subtotal = str_replace(',', '', $subtotal);
        $subtotal = str_replace('.00', '', $subtotal);
        $subtotal = (float) $subtotal;

        $shipping = Session::get('shipping') ? Session::get('shipping') : 0;
        $discount = Session::get('discount', 0);
        $grand_total = $subtotal + $shipping - $discount;

        // ✅ cart items prepare for JS
        $cartItemsForJs = [];
        foreach (Cart::instance('shopping')->content() as $item) {
            $cartItemsForJs[] = [
                'id'    => $item->id,
                'name'  => $item->name,
                'qty'   => $item->qty,
                'price' => (float) $item->price,
                'image' => asset($item->options->image ?? ''),
                'link'  => isset($item->options->slug) ? url('/product/' . $item->options->slug) : '#',
            ];
        }

        // ✅ কার্ট থেকে মোট Advance Amount বের করছি
        $advance_amount = \App\Http\Controllers\Frontend\ShoppingController::getCartAdvanceAmount();
        $hasAdvance     = $advance_amount > 0 ? true : false;

        // অগ্রিম থাকলে গ্রাহক এখন যত টাকা দিবে
        $payable_now = $hasAdvance ? $advance_amount : $grand_total;

        // অগ্রিম থাকলে কত টাকা ডেলিভারির সময় দিতে হবে
        $due_amount = $hasAdvance ? ($grand_total - $advance_amount) : 0;

        // ✅ কার্টে ডিজিটাল প্রোডাক্ট আছে কিনা চেক
        $hasDigital = false;
        foreach (Cart::instance('shopping')->content() as $item) {
            $p = \App\Models\Product::find($item->id);
            if ($p && $p->is_digital == 1) {
                $hasDigital = true;
                break;
            }
        }
    ?>

    <div class="container">
        <div class="row">
            
            <div class="col-sm-5 cus-order-2">
                <div class="checkout-shipping">
                    <form id="checkout-form" action="<?php echo e(route('customer.ordersave')); ?>" method="POST" data-parsley-validate="">
                        <?php echo csrf_field(); ?>
                        <div class="card">
                            <div class="card-header">
                                <h6>আপনার অর্ডারটি কনফার্ম করতে তথ্যগুলো পূরণ করে "অর্ডার করুন" বাটন এ ক্লিক করুন </h6>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    
                                    <div class="col-sm-12">
                                        <div class="form-group mb-3">
                                            <label for="name">আপনার নাম লিখুন *</label>
                                            <input type="text" id="name" class="form-control" name="name"
                                                value="<?php echo e(Auth::guard('customer')->user()->name ?? old('name')); ?>" required>
                                        </div>
                                    </div>

                                    
                                    <div class="col-sm-12">
                                        <div class="form-group mb-3">
                                            <label for="phone">মোবাইল নাম্বার দিন *</label>
                                            <input type="text" id="phone" class="form-control" minlength="11" maxlength="11"
                                                pattern="0[0-9]+" name="phone"
                                                value="<?php echo e(Auth::guard('customer')->user()->phone ?? old('phone')); ?>" required>
                                        </div>
                                    </div>

                                    
                                    <div class="col-sm-12">
                                        <div class="form-group mb-3">
                                            <label for="address">ঠিকানা লিখুন *</label>
                                            <input type="text" id="address" class="form-control" name="address"
                                                value="<?php echo e(Auth::guard('customer')->user()->address ?? old('address')); ?>" required>
                                        </div>
                                    </div>

                                    
                                    <div class="col-sm-12 mb-3">
                                        <div style="border:1px solid #ddd; padding:15px; border-radius:8px; background:#f9f9f9;">
                                            <label for="order_note" style="font-weight:600; margin-bottom:8px; display:block;">
                                                Order Note (ঐচ্ছিক)
                                            </label>

                                            <textarea 
                                                name="order_note" 
                                                id="order_note" 
                                                class="form-control" 
                                                rows="3"
                                                placeholder="যেমন: সন্ধ্যার পর ডেলিভারি করবেন, আগে ফোন করবেন..."
                                                style="resize:none;"><?php echo e($order_note ?? ''); ?></textarea>
                                        </div>
                                    </div>

                                    
                                    <div class="col-sm-12">
                                        <div class="form-group mb-3">
                                            <label for="area">ডেলিভারি এরিয়া নিবার্চন করুন *</label>
                                            <select id="area" class="form-control" name="area" required>
                                                <?php $__currentLoopData = $shippingcharge; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option 
                                                        value="<?php echo e($value->id); ?>"
                                                        data-charge="<?php echo e($value->amount); ?>"
                                                        <?php echo e(Session::get('shipping_id') == $value->id ? 'selected' : ''); ?>

                                                    >
                                                        <?php echo e($value->name); ?>

                                                    </option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                    </div>

                                    
                                    <div class="col-sm-12">
                                        <div class="radio_payment">
                                            <label id="payment_method">পেমেন্ট মেথড (optional)</label>
                                        </div>

                                        <!-- ================== Payment Methods ================== -->
                                        <div class="payment-methods mt-3">
                                            <div class="row g-3">

                                                
                                                <?php if(!$hasDigital && !$hasAdvance): ?>
                                                    
                                                    <div class="col-md-6 col-12">
                                                        <div class="form-check p_cash">
                                                            <input class="form-check-input" type="radio" name="payment_method"
                                                                id="inlineRadio1" value="cod" checked required />
                                                            <label class="form-check-label d-flex align-items-center gap-2" for="inlineRadio1">
                                                                <i class="fa fa-truck text-success" style="font-size:20px;"></i>
                                                                <span>(ডেলিভারির সময় পেমেন্ট)</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                <?php endif; ?>

                                                <?php if($hasAdvance): ?>
                                                    <div class="alert alert-info py-2 px-3 mb-3">
                                                        এই অর্ডারে মোট <b>৳ <?php echo e(number_format($advance_amount,2)); ?></b> অগ্রিম দিতে হবে।
                                                        আপনি নিচের যে কোন Online Payment পদ্ধতিতে এখনই এই টাকা পরিশোধ করবেন।
                                                        বাকি <b>৳ <span id="dueAmountText"><?php echo e(number_format($due_amount,2)); ?></span></b> ডেলিভারির সময় পরিশোধ করবেন।
                                                    </div>
                                                <?php endif; ?>

                                                <?php if($bkash_gateway): ?>
                                                    
                                                    <div class="col-md-6 col-12">
                                                        <div class="form-check p_bkash">
                                                            <input class="form-check-input" type="radio" name="payment_method"
                                                                id="inlineRadio2" value="bkash" />
                                                            <label class="form-check-label d-flex align-items-center gap-2" for="inlineRadio2">
                                                                <img src="<?php echo e(asset('public/frontEnd/images/bkash.svg')); ?>"
                                                                    alt="Bkash Logo"
                                                                    style="height:24px; width:auto; margin-right:6px;">
                                                                <span>বিকাশ পেমেন্ট</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                <?php endif; ?>

                                                <?php if($shurjopay_gateway): ?>
                                                    
                                                    <div class="col-md-6 col-12">
                                                        <div class="form-check p_shurjo">
                                                            <input class="form-check-input" type="radio" name="payment_method"
                                                                id="inlineRadio3" value="shurjopay" required />
                                                            <label class="form-check-label d-flex align-items-center gap-2" for="inlineRadio3">
                                                                <img src="<?php echo e(asset('public/frontEnd/images/shurjoPay.png')); ?>"
                                                                    alt="ShurjoPay"
                                                                    style="height:24px; width:auto; margin-right:6px;">
                                                                <span>ShurjoPay</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                <?php endif; ?>

                                                <?php if($uddoktapay_gateway): ?>
                                                    
                                                    <div class="col-md-6 col-12">
                                                        <div class="form-check p_uddokta mb-2">
                                                            <input class="form-check-input" type="radio" name="payment_method"
                                                                id="inlineRadio4" value="uddoktapay" required />
                                                            <label class="form-check-label d-flex align-items-center gap-2" for="inlineRadio4">
                                                                <img src="<?php echo e(asset('public/frontEnd/images/uddokta.png')); ?>"
                                                                    alt="UddoktaPay"
                                                                    style="height:22px; margin-right:6px;">
                                                                
                                                            </label>
                                                        </div>
                                                    </div>
                                                <?php endif; ?>

                                            </div>
                                        </div>

                                        <!-- ================== Custom CSS ================== -->
                                        <style>
                                            .form-check {
                                                background: #f9f9f9;
                                                border: 1px solid #ddd;
                                                border-radius: 8px;
                                                padding: 10px 14px;
                                                margin-bottom: 10px;
                                                transition: all 0.3s ease;
                                            }
                                            .form-check:hover {
                                                background: #eefaf0;
                                                border-color: #4DBC60;
                                            }
                                            .form-check-input {
                                                transform: scale(1.1);
                                                margin-right: 10px;
                                            }
                                            .form-check-input:checked {
                                                background-color: #4DBC60;
                                                border-color: #4DBC60;
                                            }
                                            .form-check-label {
                                                font-weight: 500;
                                                display: flex;
                                                align-items: center;
                                                gap: 8px;
                                            }
                                            .form-check-label img {
                                                object-fit: contain;
                                            }
                                            @media (max-width: 767px) {
                                                .form-check-label span {
                                                    font-size: 14px;
                                                }
                                            }
                                        </style>
                                    </div>

                                    
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <button class="order_place" type="submit">অর্ডার করুন</button>
                                        </div>
                                    </div>
                                </div> 
                            </div> 
                        </div> 
                    </form>
                </div>
            </div>

            
            <div class="col-sm-7 cust-order-1">
                <div class="cart_details table-responsive-sm">
                    <div class="card">
                        <div class="card-header">
                            <h5>অর্ডারের তথ্য</h5>
                        </div>

                        
                        <div class="coupon-section border rounded mb-3 p-3">
                            <h6 class="fw-bold mb-2">🎟️ কুপন কোড ব্যবহার করুন</h6>

                            <?php if(!Session::has('coupon_code')): ?>
                                <form action="<?php echo e(route('coupon.apply')); ?>" method="POST" class="d-flex gap-2">
                                    <?php echo csrf_field(); ?>
                                    <input type="text" name="coupon_code" class="form-control" placeholder="Coupon code দিন..." required>
                                    <button class="btn btn-success px-4 fw-semibold">Apply</button>
                                </form>
                            <?php else: ?>
                                <div class="alert alert-success d-flex justify-content-between align-items-center mb-0 shadow-sm">
                                    <div>
                                        <span class="fw-semibold">🎉 Coupon <b><?php echo e(Session::get('coupon_code')); ?></b> Applied!</span><br>
                                        Discount: <b>৳<?php echo e(Session::get('discount')); ?></b>
                                    </div>
                                    <a href="<?php echo e(route('coupon.remove')); ?>" class="text-danger small fw-bold text-decoration-none">Remove ✖</a>
                                </div>
                            <?php endif; ?>
                        </div>

                        <style>
                            .coupon-section {
                                background: #f9fafb;
                                border: 1px solid #e2e6ea;
                                border-radius: 8px;
                                box-shadow: 0 1px 3px rgba(0,0,0,0.05);
                            }
                            .coupon-section h6 {
                                font-size: 15px;
                                color: #333;
                            }
                            .coupon-section form input {
                                border: 1px solid #d1d5db;
                                border-radius: 6px;
                                font-size: 14px;
                            }
                            .coupon-section form input:focus {
                                border-color: #4DBC60;
                                box-shadow: 0 0 0 0.15rem rgba(77,188,96,0.25);
                            }
                            .coupon-section .btn-success {
                                background: #4DBC60;
                                border-color: #4DBC60;
                                transition: all 0.3s ease;
                            }
                            .coupon-section .btn-success:hover {
                                background: #3ca752;
                            }
                            .alert-success {
                                background-color: #e9f8ec;
                                border: 1px solid #cce8d3;
                                color: #256029;
                                border-radius: 6px;
                                padding: 10px 14px;
                                font-size: 14px;
                            }
                            .alert-success a {
                                color: #c0392b !important;
                            }
                            .alert-success a:hover {
                                text-decoration: underline;
                            }
                        </style>

                        <div class="card-body cartlist">
                            <table class="cart_table table table-bordered table-striped text-center mb-0">
                                <thead>
                                    <tr>
                                        <th style="width: 20%;">ডিলিট</th>
                                        <th style="width: 40%;">প্রোডাক্ট</th>
                                        <th style="width: 20%;">পরিমাণ</th>
                                        <th style="width: 20%;">মূল্য</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__currentLoopData = Cart::instance('shopping')->content(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td>
                                                <a class="cart_remove" data-id="<?php echo e($value->rowId); ?>">
                                                    <i class="fas fa-trash text-danger"></i>
                                                </a>
                                            </td>
                                            <td class="text-left">
                                                <a href="<?php echo e(route('product', $value->options->slug)); ?>">
                                                    <img src="<?php echo e(asset($value->options->image)); ?>" />
                                                    <?php echo e(Str::limit($value->name, 20)); ?>

                                                </a>
                                                <?php if($value->options->product_size): ?>
                                                    <p>Size: <?php echo e($value->options->product_size); ?></p>
                                                <?php endif; ?>
                                                <?php if($value->options->product_color): ?>
                                                    <p>Color: <?php echo e($value->options->product_color); ?></p>
                                                <?php endif; ?>
                                            </td>
                                            <td><?php echo e($value->qty); ?></td>
                                            <td><span class="alinur">৳</span> <strong><?php echo e($value->price); ?></strong></td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th colspan="3" class="text-end px-4">মোট</th>
                                        <td class="px-4" id="subtotalAmount">৳ <?php echo e(number_format($subtotal,2)); ?></td>
                                    </tr>
                                    <tr>
                                        <th colspan="3" class="text-end px-4">ডেলিভারি চার্জ</th>
                                        <td class="px-4" id="shippingAmount">৳ <?php echo e(number_format($shipping,2)); ?></td>
                                    </tr>
                                    <?php if($discount > 0): ?>
                                        <tr>
                                            <th colspan="3" class="text-end px-4">কুপন ছাড়</th>
                                            <td id="discountAmount">-৳ <?php echo e(number_format($discount,2)); ?></td>
                                        </tr>
                                    <?php endif; ?>
                                    <tr>
                                        <th colspan="3" class="text-end px-4">সর্বমোট</th>
                                        <td><b id="grandTotalAmount">৳ <?php echo e(number_format($grand_total,2)); ?></b></td>
                                    </tr>

                                    <?php if($hasAdvance): ?>
                                        <tr>
                                            <th colspan="3" class="text-end px-4">এখন অগ্রিম পরিশোধ করবেন</th>
                                            <td class="px-4 text-success">
                                                <b id="advanceAmountCell">৳ <?php echo e(number_format($advance_amount,2)); ?></b>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th colspan="3" class="text-end px-4">ডেলিভারির সময় দিতে হবে</th>
                                            <td class="px-4 text-danger">
                                                <b id="dueAmountCell">৳ <?php echo e(number_format($due_amount,2)); ?></b>
                                            </td>
                                        </tr>
                                    <?php endif; ?>
                                </tfoot>
                            </table>
                        </div> 
                    </div> 
                </div>
            </div>
        </div>
    </div>
</section>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('script'); ?>
<script src="<?php echo e(asset('public/frontEnd/js/select2.min.js')); ?>"></script>

<script>
    document.addEventListener('DOMContentLoaded', function(){
        $(".select2").select2();

        const form = document.querySelector('#checkout-form');
        if(!form) return;

        // PHP থেকে ভ্যালু JS-এ
        const cartItems      = <?php echo json_encode($cartItemsForJs, 15, 512) ?>;
        const baseSubtotal   = parseFloat("<?php echo e($subtotal); ?>") || 0;
        const baseShipping   = parseFloat("<?php echo e($shipping); ?>") || 0;
        const baseDiscount   = parseFloat("<?php echo e($discount); ?>") || 0;
        const advanceAmount  = parseFloat("<?php echo e($advance_amount); ?>") || 0;
        const hasAdvance     = <?php echo json_encode($hasAdvance, 15, 512) ?>;

        // টেবিলের সেলগুলো
        const subtotalEl     = document.getElementById('subtotalAmount');
        const shippingEl     = document.getElementById('shippingAmount');
        const grandTotalEl   = document.getElementById('grandTotalAmount');
        const advanceEl      = document.getElementById('advanceAmountCell');
        const dueEl          = document.getElementById('dueAmountCell');
        const dueTextEl      = document.getElementById('dueAmountText');

        function formatAmount(amount) {
            return parseFloat(amount).toFixed(2);
        }

        // 🔹 Delivery area change করলে shipping + grand total + due আপডেট হবে
        const areaSelect = document.querySelector('#area');
        if (areaSelect) {
            areaSelect.addEventListener('change', function () {
                const selectedOption = this.options[this.selectedIndex];
                const newShipping    = parseFloat(selectedOption.getAttribute('data-charge')) || 0;

                // ✅ সাবটোটাল অপরিবর্তিত থাকবে (প্রোডাক্ট একই)
                const subtotal       = baseSubtotal;
                const discount       = baseDiscount;
                const grandTotal     = subtotal + newShipping - discount;
                const dueAmount      = hasAdvance ? (grandTotal - advanceAmount) : 0;

                // DOM আপডেট
                if (shippingEl)    shippingEl.textContent  = '৳ ' + formatAmount(newShipping);
                if (subtotalEl)    subtotalEl.textContent  = '৳ ' + formatAmount(subtotal);
                if (grandTotalEl)  grandTotalEl.textContent= '৳ ' + formatAmount(grandTotal);
                if (hasAdvance) {
                    if (advanceEl) advanceEl.textContent = '৳ ' + formatAmount(advanceAmount);
                    if (dueEl)     dueEl.textContent     = '৳ ' + formatAmount(dueAmount);
                    if (dueTextEl) dueTextEl.textContent = formatAmount(dueAmount);
                }

                // চাইলে এখানে তুমি fetch দিয়ে server-এ shipping id পাঠিয়ে Session আপডেট রাখতে পারো
                fetch('<?php echo e(route("shipping.charge")); ?>?id=' + this.value, {
                    method: 'GET',
                }).catch(err => console.error(err));
            });
        }

        const subtotal  = baseSubtotal;
        const shipping  = baseShipping;
        const discount  = baseDiscount;
        const total_amount = (subtotal + shipping - discount).toFixed(2);

        let timer;
        let isSubmitting = false; // ✅ ফর্ম সাবমিট হলে true হবে

        function saveIncompleteOrder() {
            if (isSubmitting) return; // ✅ সাবমিটের সময় আর ইনকমপ্লিট সেভ হবে না

            clearTimeout(timer);
            timer = setTimeout(() => {
                const name    = form.querySelector('input[name="name"]').value.trim();
                const phone   = form.querySelector('input[name="phone"]').value.trim();
                const address = form.querySelector('input[name="address"]').value.trim();

                if(!name && !phone && !address) return;

                const payload = {
                    name, phone, address,
                    items: cartItems,
                    product_image: cartItems[0]?.image || '',
                    product_link:  cartItems[0]?.link || '',
                    total_amount
                };

                fetch('<?php echo e(route("incomplete.order.store")); ?>', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'Accept': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').content
                    },
                    body: JSON.stringify(payload)
                })
                .then(res => res.json())
                .then(data => console.log('✅ Incomplete Order Saved:', data))
                .catch(err => console.error('❌ Error:', err));
            }, 2000);
        }

        form.addEventListener('input', saveIncompleteOrder);
        form.addEventListener('change', saveIncompleteOrder);

        // ✅ ফর্ম সাবমিট হলে ইনকমপ্লিট সেভ বন্ধ
        form.addEventListener('submit', function () {
            isSubmitting = true;
            clearTimeout(timer);
        });
    });
</script>


<script type="text/javascript">
    window.dataLayer = window.dataLayer || [];

    (function () {
        const items        = <?php echo json_encode($cartItemsForJs, 15, 512) ?>;
        const hasAdvance   = <?php echo json_encode($hasAdvance, 15, 512) ?>;
        const advanceAmount= parseFloat("<?php echo e($advance_amount); ?>") || 0;
        const grandTotal   = parseFloat("<?php echo e($grand_total); ?>") || 0;
        const payableNow   = hasAdvance ? advanceAmount : grandTotal;
        const coupon       = <?php echo json_encode(Session::get('coupon_code', null), 512) ?>;

        const ga4Items = items.map(function (item, index) {
            return {
                item_id: String(item.id),
                item_name: item.name,
                quantity: Number(item.qty),
                price: Number(item.price),
                index: index
            };
        });

        // GA4: begin_checkout
        if (ga4Items.length) {
            window.dataLayer.push({ ecommerce: null });
            window.dataLayer.push({
                event: "begin_checkout",
                ecommerce: {
                    currency: "BDT",
                    value: payableNow,
                    coupon: coupon,
                    items: ga4Items
                }
            });
        }

        // Facebook Pixel: InitiateCheckout
        if (typeof fbq === "function" && items.length) {
            fbq("track", "InitiateCheckout", {
                value: payableNow,
                currency: "BDT",
                num_items: items.length,
                content_ids: items.map(function(i){ return i.id; }),
                contents: items.map(function(i){
                    return {id: i.id, quantity: i.qty, item_price: i.price};
                }),
                coupon: coupon || undefined
            });
        }

        // On form submit: GA4 add_payment_info + Pixel AddPaymentInfo
        document.addEventListener("DOMContentLoaded", function () {
            var form = document.getElementById("checkout-form");
            if (!form) return;

            form.addEventListener("submit", function () {
                var paymentInput  = form.querySelector('input[name="payment_method"]:checked');
                var paymentMethod = paymentInput ? paymentInput.value : null;

                // GA4 add_payment_info
                window.dataLayer.push({ ecommerce: null });
                window.dataLayer.push({
                    event: "add_payment_info",
                    payment_type: paymentMethod,
                    ecommerce: {
                        currency: "BDT",
                        value: payableNow,
                        coupon: coupon,
                        items: ga4Items
                    }
                });

                // Facebook Pixel: AddPaymentInfo
                if (typeof fbq === "function" && items.length) {
                    fbq("track", "AddPaymentInfo", {
                        value: payableNow,
                        currency: "BDT",
                        payment_method: paymentMethod,
                        num_items: items.length,
                        content_ids: items.map(function(i){ return i.id; })
                    });
                }
            });
        });
    })();
</script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('frontEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\frontEnd\layouts\customer\checkout.blade.php ENDPATH**/ ?>