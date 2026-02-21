<?php if($customers): ?>
	<table class="table table-bordered">
		<?php $__currentLoopData = $customers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<tr>
			<td><a href="<?php echo e(route('customers.profile',['id'=>$value->id])); ?>"><?php echo e($value->name); ?>

			 </a></td>
		</tr>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
	</table>
<?php endif; ?><?php /**PATH C:\Users\getup\Downloads\ecom2\drive-download-20260125T155433Z-1-001\ecommerce1\resources\views\backEnd\customer\search.blade.php ENDPATH**/ ?>