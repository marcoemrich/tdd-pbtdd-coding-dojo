<template>
  <div class="slidev-layout cover">
    <div v-if="image">
      <img :src="image" alt="" class="cover-img" draggable="false" />
    </div>
    <div class="cover-title-box">
      <img src="/cc-logo.png" alt="Logo" class="cover-title-logo" />
      <slot />
    </div>
  </div>
</template>

<script setup>
const { image } = defineProps({ image: String })
</script>

<style>

.cover-img {
  position: absolute;
  top: 10%;
  left: 5%;
  width: 90%;
  height: 80%;
  object-fit: cover;
  pointer-events: none;
  user-select: none;
  z-index: 1;
}

.cover-title-box {
  position: absolute;
  top: 0;
  left: 10%;
  width: 30%;
  height: 50%;
  background: var(--slidev-theme-primary);
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  z-index: 2;
  padding: 1.5rem 1.5rem;
  text-align: left;

  .cover-title-logo {
    margin-top: 2rem;
    max-width: 80%;
  }
}
</style>
