<template>
  <div class="slidev-layout">
    <div class="boxes-layout-content">
      <slot />
    </div>
    <div class="box bg-primary box-1">
      <div v-if="image1">
        <img :src="image1" alt="" class="box-image" draggable="false" />
      </div>
      <slot name="box1" />
    </div>
    <div class="box bg-primary box-2">
      <div v-if="image2">
        <img :src="image2" alt="" class="box-image" draggable="false" />
      </div>
      <slot name="box2" />
    </div>
    <div class="box bg-primary box-3">
      <div v-if="image3">
        <img :src="image3" alt="" class="box-image" draggable="false" />
      </div>
      <slot name="box3" />
    </div>
  </div>
</template>

<script setup>
const { image1, image2, image3 } = defineProps({ image1: String, image2: String, image3: String })
</script>

