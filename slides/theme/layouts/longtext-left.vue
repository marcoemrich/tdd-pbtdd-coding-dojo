<template>
  <div class="slidev-layout cover">
    <div class="text-box-left">
      <slot />
    </div>
    <div v-if="image">
      <img :src="image" alt="title image" class="slide-img-right" draggable="false" />
    </div>
  </div>
</template>

<script setup>
const { image } = defineProps({ image: String })
</script>

<style>
.text-box-left {
  position: absolute;
  top: 10%;
  left: 5%;
  width: 50%;
  height: 80%;
  background: var(--slidev-theme-primary);
  display: flex;
  flex-direction: column;
  justify-content: center;
  z-index: 1;
  padding: 1.5rem 4.5rem 1.5rem 1.5rem;
  text-align: left;
}

.slide-img-right {
  position: absolute;
  top: 15%;
  left: 50%;
  max-width: 45%;
  height: 70%;
  object-fit: cover;
  pointer-events: none;
  user-select: none;
  z-index: 2;
}
</style>
