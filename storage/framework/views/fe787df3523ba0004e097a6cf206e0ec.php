<?php if (isset($component)) { $__componentOriginal9ac128a9029c0e4701924bd2d73d7f54 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54 = $attributes; } ?>
<?php $component = App\View\Components\AppLayout::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('app-layout'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\App\View\Components\AppLayout::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
    <?php $__env->slot('title', 'Stores'); ?>
     <?php $__env->slot('header', null, []); ?> 
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            <?php echo e(__('Stores')); ?>

        </h2>
     <?php $__env->endSlot(); ?>

    <?php if (isset($component)) { $__componentOriginala766c2d312d6f7864fe218e2500d2bba = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginala766c2d312d6f7864fe218e2500d2bba = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.container','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('container'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
       <div class="grid grid-cols-4 gap-6">
        <?php $__currentLoopData = $stores; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $store): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php if (isset($component)) { $__componentOriginal53747ceb358d30c0105769f8471417f6 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal53747ceb358d30c0105769f8471417f6 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.card.index','data' => ['class' => 'relative']] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('card'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes(['class' => 'relative']); ?>
            <a href="<?php echo e(route('stores.show', $store)); ?>" class="absolute inset-0 size-full"></a>
           <div class="p-6 pb-0">
            <?php if($store->logo): ?>
            <img src="/storage/<?php echo e($store->logo); ?>" alt="<?php echo e($store->name); ?>" class="size-16 rounded-lg">
            <?php else: ?>
            <div class="size-16 rounded-lg bg-gray-800"></div>
            <?php endif; ?>
           </div>
          <?php if (isset($component)) { $__componentOriginal1d4357ee5fd8f0dcba6696de07062857 = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal1d4357ee5fd8f0dcba6696de07062857 = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.card.header','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('card.header'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
            <?php if (isset($component)) { $__componentOriginal6ea0bfee1a50e1de1096e35e7b344cad = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal6ea0bfee1a50e1de1096e35e7b344cad = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.card.title','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('card.title'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
                <h2><?php echo e($store->name); ?></h2>
             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal6ea0bfee1a50e1de1096e35e7b344cad)): ?>
<?php $attributes = $__attributesOriginal6ea0bfee1a50e1de1096e35e7b344cad; ?>
<?php unset($__attributesOriginal6ea0bfee1a50e1de1096e35e7b344cad); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal6ea0bfee1a50e1de1096e35e7b344cad)): ?>
<?php $component = $__componentOriginal6ea0bfee1a50e1de1096e35e7b344cad; ?>
<?php unset($__componentOriginal6ea0bfee1a50e1de1096e35e7b344cad); ?>
<?php endif; ?>
            <?php if (isset($component)) { $__componentOriginal687b2b57c91035c27980e0099398a14b = $component; } ?>
<?php if (isset($attributes)) { $__attributesOriginal687b2b57c91035c27980e0099398a14b = $attributes; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.card.description','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? $attributes->all() : [])); ?>
<?php $component->withName('card.description'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag): ?>
<?php $attributes = $attributes->except(\Illuminate\View\AnonymousComponent::ignoredParameterNames()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
                <?php echo e(str($store->description)->limit()); ?>

             <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal687b2b57c91035c27980e0099398a14b)): ?>
<?php $attributes = $__attributesOriginal687b2b57c91035c27980e0099398a14b; ?>
<?php unset($__attributesOriginal687b2b57c91035c27980e0099398a14b); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal687b2b57c91035c27980e0099398a14b)): ?>
<?php $component = $__componentOriginal687b2b57c91035c27980e0099398a14b; ?>
<?php unset($__componentOriginal687b2b57c91035c27980e0099398a14b); ?>
<?php endif; ?>
          <?php if(auth()->guard()->check()): ?>
          <?php if($store->user_id === auth()->user()->id): ?>
          <a href="<?php echo e(route('stores.edit', $store->id)); ?>" class="underline text-blue-600">
          Edit
          </a>
          <?php endif; ?>
          <?php endif; ?>
           <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal1d4357ee5fd8f0dcba6696de07062857)): ?>
<?php $attributes = $__attributesOriginal1d4357ee5fd8f0dcba6696de07062857; ?>
<?php unset($__attributesOriginal1d4357ee5fd8f0dcba6696de07062857); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal1d4357ee5fd8f0dcba6696de07062857)): ?>
<?php $component = $__componentOriginal1d4357ee5fd8f0dcba6696de07062857; ?>
<?php unset($__componentOriginal1d4357ee5fd8f0dcba6696de07062857); ?>
<?php endif; ?>
         <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal53747ceb358d30c0105769f8471417f6)): ?>
<?php $attributes = $__attributesOriginal53747ceb358d30c0105769f8471417f6; ?>
<?php unset($__attributesOriginal53747ceb358d30c0105769f8471417f6); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal53747ceb358d30c0105769f8471417f6)): ?>
<?php $component = $__componentOriginal53747ceb358d30c0105769f8471417f6; ?>
<?php unset($__componentOriginal53747ceb358d30c0105769f8471417f6); ?>
<?php endif; ?>
       
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
       </div>
     <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginala766c2d312d6f7864fe218e2500d2bba)): ?>
<?php $attributes = $__attributesOriginala766c2d312d6f7864fe218e2500d2bba; ?>
<?php unset($__attributesOriginala766c2d312d6f7864fe218e2500d2bba); ?>
<?php endif; ?>
<?php if (isset($__componentOriginala766c2d312d6f7864fe218e2500d2bba)): ?>
<?php $component = $__componentOriginala766c2d312d6f7864fe218e2500d2bba; ?>
<?php unset($__componentOriginala766c2d312d6f7864fe218e2500d2bba); ?>
<?php endif; ?>

 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54)): ?>
<?php $attributes = $__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54; ?>
<?php unset($__attributesOriginal9ac128a9029c0e4701924bd2d73d7f54); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal9ac128a9029c0e4701924bd2d73d7f54)): ?>
<?php $component = $__componentOriginal9ac128a9029c0e4701924bd2d73d7f54; ?>
<?php unset($__componentOriginal9ac128a9029c0e4701924bd2d73d7f54); ?>
<?php endif; ?>
<?php /**PATH D:\laragon\www\login\resources\views/stores/index.blade.php ENDPATH**/ ?>