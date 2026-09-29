<template>
  <div class="slidev-layout">
    <div class="boxes-layout-content">
      <slot />
    </div>
    <div class="box box-1" :style="{ backgroundColor: color1 }">
      <div v-if="image1">
        <img :src="image1" alt="" class="box-image" draggable="false" />
      </div>
      <slot name="box1" />
    </div>
    <div class="box box-2" :style="{ backgroundColor: color2 }">
      <div v-if="image2">
        <img :src="image2" alt="" class="box-image" draggable="false" />
      </div>
      <slot name="box2" />
    </div>
    <div class="box box-3" :style="{ backgroundColor: color3 }">
      <div v-if="image3">
        <img :src="image3" alt="" class="box-image" draggable="false" />
      </div>
      <slot name="box3" />
    </div>
  </div>
</template>

<script setup>
const {
  image1, image2, image3,
  color1 = 'var(--slidev-theme-primary)',
  color2 = 'var(--slidev-theme-primary)',
  color3 = 'var(--slidev-theme-primary)',
} = defineProps({
  image1: String, image2: String, image3: String,
  color1: String, color2: String, color3: String,
})
</script>
