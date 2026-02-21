 
<?php $__env->startSection('title',$keyword); ?> 
<?php $__env->startPush('css'); ?>
<link rel="stylesheet" href="<?php echo e(asset('public/frontEnd/css/jquery-ui.css')); ?>" />
<?php $__env->stopPush(); ?> 
<?php $__env->startSection('content'); ?>
<section class="product-section">
    <div class="container">
        <div class="sorting-section">
            <div class="row">
                <div class="col-sm-6">
                    <div class="category-breadcrumb d-flex align-items-center">
                        <a href="<?php echo e(route('home')); ?>">Home</a>
                        <span>/</span>
                        <strong><?php echo e($keyword); ?></strong>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="showing-data">
                                <span>Showing <?php echo e($products->firstItem()); ?>-<?php echo e($products->lastItem()); ?> of <?php echo e($products->total()); ?> Results</span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="mobile-filter-toggle">
                                <i class="fa fa-list-ul"></i><span>filter</span>
                            </div>
                            <div class="page-sort">
                                <form action="" class="sort-form">
                                    <select name="sort" class="form-control form-select sort">
                                        <option value="1" <?php if(request()->get('sort')==1): ?>selected <?php endif; ?>>Product: Latest</option>
                                        <option value="2" <?php if(request()->get('sort')==2): ?>selected <?php endif; ?>>Product: Oldest</option>
                                        <option value="3" <?php if(request()->get('sort')==3): ?>selected <?php endif; ?>>Price: High To Low</option>
                                        <option value="4" <?php if(request()->get('sort')==4): ?>selected <?php endif; ?>>Price: Low To High</option>
                                        <option value="5" <?php if(request()->get('sort')==5): ?>selected <?php endif; ?>>Name: A-Z</option>
                                        <option value="6" <?php if(request()->get('sort')==6): ?>selected <?php endif; ?>>Name: Z-A</option>
                                    </select>
                                    <input type="hidden" name="min_price" value="<?php echo e(request()->get('min_price')); ?>" />
                                    <input type="hidden" name="max_price" value="<?php echo e(request()->get('max_price')); ?>" />
                                </form>
                            </div>
                            
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12">
                <div class="category-product main_product_inner">
                    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="product_item wist_item wow zoomIn" data-wow-duration="1.5s"
                            data-wow-delay="0.<?php echo e($key); ?>s">
                            <div class="product_item_inner">
                                <?php if($value->old_price): ?>
                                <div class="sale-badge">
                                    <div class="sale-badge-inner">
                                        <div class="sale-badge-box">
                                            <span class="sale-badge-text">
                                                <p><?php $discount=(((($value->old_price)-($value->new_price))*100) / ($value->old_price)) ?> <?php echo e(number_format($discount, 0)); ?>%</p>
                                                ছাড়
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                                <div class="pro_img">
                                    <a href="<?php echo e(route('product', $value->slug)); ?>">
                                        <img src="<?php echo e(asset($value->image ? $value->image->image : '')); ?>"
                                            alt="<?php echo e($value->name); ?>" />
                                    </a>
                                </div>
                                <div class="pro_des">
                                    <div class="pro_name">
                                        <a
                                            href="<?php echo e(route('product', $value->slug)); ?>"><?php echo e(Str::limit($value->name, 35)); ?></a>
                                    </div>
                                </div>
                            </div>
                            <?php
                                $averageRating = $value->reviews->avg('ratting'); 
                                $filledStars = floor($averageRating);
                                $hasHalfStar = $averageRating - $filledStars >= 0.5;
                                $emptyStars = 5 - $filledStars - ($hasHalfStar ? 1 : 0);
                            ?>

                            <?php if($averageRating >= 0 && $averageRating <= 5): ?>
                                
                                <?php for($i = 0; $i < $filledStars; $i++): ?>
                                    <i class="fas fa-star"></i>
                                <?php endfor; ?>

                                
                                <?php if($hasHalfStar): ?>
                                    <i class="fas fa-star-half-alt"></i>
                                <?php endif; ?>

                                
                                <?php for($i = 0; $i < $emptyStars; $i++): ?>
                                    <i class="far fa-star"></i>
                                <?php endfor; ?>
                            <?php else: ?>
                                <span>Invalid rating range</span>
                            <?php endif; ?>

                             <div class="pro_price">
                                <p>
                                    <del>৳ <?php echo e($value->old_price); ?></del>
                                    ৳ <?php echo e($value->new_price); ?> <?php if($value->old_price): ?>
                                    <?php endif; ?>
                                </p>
                            </div>
                            <?php if(!$value->prosizes->isEmpty() || !$value->procolors->isEmpty()): ?>
                            <div class="pro_btn">
                                <div class="cart_btn order_button">
                                    <a href="<?php echo e(route('product', $value->slug)); ?>"
                                        class="addcartbutton">
                                        <span>অর্ডার করুন</span>
                                    </a>
                                </div>
                               
                            </div>
                            <?php else: ?>
                            <div class="pro_btn">
                                <div class="cart_btn order_button">
                                    <a class="addcartbutton" data-id="<?php echo e($value->id); ?>" data-checkout="yes">
                                        <span>অর্ডার করুন</span>
                                    </a>
                                </div>
                            </div>
                            <?php endif; ?>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="custom_paginate">
                    <?php echo e($products->links('pagination::bootstrap-4')); ?>

                   
                </div>
            </div>
        </div>
    </div>
</section>


<?php $__env->stopSection(); ?>
<?php $__env->startPush('script'); ?>
<script>
    $(".sort").change(function(){
       $('#loading').show();
       $(".sort-form").submit();
    })
</script>


<script type="text/javascript">
    window.dataLayer = window.dataLayer || [];

    (function () {
        var searchTerm = <?php echo json_encode($keyword, 15, 512) ?>;
        var listId = "search_results";
        var listName = "Search - " + searchTerm;

        var listItems = [
            <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $index => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            {
                item_id: "<?php echo e($value->id); ?>",
                item_name: <?php echo json_encode($value->name, 15, 512) ?>,
                price: <?php echo e((float) $value->new_price); ?>,
                item_brand: <?php echo json_encode(optional($value->brand)->name, 15, 512) ?>,
                item_category: <?php echo json_encode(optional($value->category)->name, 15, 512) ?>,
                item_list_id: listId,
                item_list_name: listName,
                index: <?php echo e($loop->iteration); ?>,
                slug: <?php echo json_encode($value->slug, 15, 512) ?>,
                currency: "BDT"
            }<?php if(!$loop->last): ?>,<?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        ];

        // GA4: search event
        window.dataLayer.push({
            event: "search",
            search_term: searchTerm
        });

        // GA4: view_item_list for search results
        if (listItems.length) {
            window.dataLayer.push({ ecommerce: null });
            window.dataLayer.push({
                event: "view_item_list",
                search_term: searchTerm,
                ecommerce: {
                    item_list_id: listId,
                    item_list_name: listName,
                    items: listItems.map(function (item) {
                        return {
                            item_id: item.item_id,
                            item_name: item.item_name,
                            index: item.index,
                            price: item.price,
                            item_brand: item.item_brand,
                            item_category: item.item_category,
                            item_list_id: item.item_list_id,
                            item_list_name: item.item_list_name,
                            currency: item.currency
                        };
                    })
                }
            });
        }

        // Facebook Pixel: Search + SearchResultsView (custom)
        if (typeof fbq === "function") {
            fbq("track", "Search", {
                search_string: searchTerm,
                content_category: "search_results",
                currency: "BDT"
            });

            if (listItems.length) {
                fbq("trackCustom", "SearchResultsView", {
                    search_term: searchTerm,
                    content_ids: listItems.map(function (i) { return i.item_id; }),
                    currency: "BDT"
                });
            }
        }

        function findItemByHref(href) {
            if (!href) return null;
            try {
                var parts = href.split("/");
                var last = parts[parts.length - 1].split("?")[0];
                return listItems.find(function (i) { return i.slug === last; }) || null;
            } catch (e) {
                return null;
            }
        }

        // Product click from search result -> select_item + FB event
        $(document).on("click", ".category-product .product_item a", function () {
            var href = $(this).attr("href") || "";
            var item = findItemByHref(href);
            if (!item) return;

            window.dataLayer.push({ ecommerce: null });
            window.dataLayer.push({
                event: "select_item",
                ecommerce: {
                    item_list_id: listId,
                    item_list_name: listName,
                    items: [{
                        item_id: item.item_id,
                        item_name: item.item_name,
                        index: item.index,
                        price: item.price,
                        item_brand: item.item_brand,
                        item_category: item.item_category,
                        item_list_id: item.item_list_id,
                        item_list_name: item.item_list_name,
                        currency: item.currency
                    }]
                }
            });

            if (typeof fbq === "function") {
                fbq("trackCustom", "SearchResultProductClick", {
                    search_term: searchTerm,
                    content_ids: [item.item_id],
                    content_name: item.item_name,
                    content_category: item.item_category,
                    value: item.price,
                    currency: "BDT"
                });
            }
        });

    })();
</script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('frontEnd.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\frontEnd\layouts\pages\search.blade.php ENDPATH**/ ?>