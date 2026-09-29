<script setup lang="ts">
interface Props {
  images: string[]
  maxHeight?: number
}

const props = withDefaults(defineProps<Props>(), {
  maxHeight: 80
})

// Calculate max height as percentage based on number of images per column
const imagesPerColumn = Math.ceil(props.images.length / 2)
// Divide maxHeight by number of images per column
const maxHeightPercent = (props.maxHeight / imagesPerColumn).toFixed(2)
</script>

<template>
  <div class="image-grid">
    <div class="column">
      <img
        v-for="(image, index) in images.slice(0, Math.ceil(images.length / 2))"
        :key="index"
        :src="image"
        :style="{ maxHeight: `${maxHeightPercent}%` }"
        alt=""
      />
    </div>
    <div class="column">
      <img
        v-for="(image, index) in images.slice(Math.ceil(images.length / 2))"
        :key="index + Math.ceil(images.length / 2)"
        :src="image"
        :style="{ maxHeight: `${maxHeightPercent}%` }"
        alt=""
      />
    </div>
  </div>
</template>

<style scoped>
.image-grid {
  display: flex;
  gap: 1rem;
  width: 100%;
  height: 100%;
}

.column {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 1rem;
  align-items: center;
}

.column img {
  width: auto;
  height: auto;
  object-fit: contain;
}
</style>
