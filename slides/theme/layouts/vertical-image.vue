<template>
  <div class="slidev-layout cover">
    <div v-if="image">
      <img :src="image" alt="title image" class="slide-img-vertical-left" draggable="false" />
    </div>
    <div class="text-box-bottom">
      <slot />
    </div>
  </div>
</template>

<script setup>
const { image } = defineProps({ image: String })
</script>

<style>
.text-box-bottom {
  position: absolute;
  top: 45%;
  left: 5%;
  width: 90%;
  height: 45%;
  background: var(--slidev-theme-primary);
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  z-index: 1;
  padding: 1.5rem 1.5rem 0.5rem 42%;
  text-align: left;
}

.slide-img-vertical-left {
  position: absolute;
  top: 10%;
  left: 8%;
  width: 36%;
  height: 76%;
  object-fit: cover;
  pointer-events: none;
  user-select: none;
  z-index: 2;
}
</style>
