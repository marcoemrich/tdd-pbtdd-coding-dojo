<template>
  <div class="slidev-layout full-image">
    <img v-if="image" :src="image" alt="" class="full-image-img" draggable="false" />
    <div class="full-image-caption" :class="`caption-${caption}`">
      <slot />
    </div>
  </div>
</template>

<script setup>
const { image, caption } = defineProps({
  image: String,
  caption: { type: String, default: 'bottom' },
})
</script>

<style>
.full-image {
  position: relative;
  padding: 0;
  overflow: hidden;

  .full-image-img {
    position: absolute;
    inset: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    pointer-events: none;
    user-select: none;
  }

  .full-image-caption {
    position: absolute;
    inset: 0;
    padding: 0.5rem 1.5rem;
    display: flex;
    flex-direction: column;

    h1 {
      margin: 0;
      font-family: Arial, Helvetica, sans-serif;
      font-size: 71px;
      font-weight: 700;
      line-height: 0.9;
      color: #fff;
      text-shadow: 0 6px 5px rgba(0, 0, 0, 0.75);
    }
  }

  .caption-bottom { justify-content: flex-end; align-items: center; text-align: center; }
  .caption-bottom-left { justify-content: flex-end; align-items: flex-start; text-align: left; }
  .caption-top-left { justify-content: flex-start; align-items: flex-start; text-align: center; }
  .caption-top-right { justify-content: flex-start; align-items: flex-end; text-align: center; }
  .caption-center { justify-content: center; align-items: center; text-align: center; }
  .caption-none { display: contents; }
}
</style>
