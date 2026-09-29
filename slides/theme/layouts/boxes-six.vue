<template>
  <div class="slidev-layout">
    <div class="boxes-layout-content">
      <slot />
    </div>
    <div class="boxes-six-grid">
      <div class="box-six" :style="{ backgroundColor: color1 }">
        <slot name="box1" />
      </div>
      <div class="box-six" :style="{ backgroundColor: color2 }">
        <slot name="box2" />
      </div>
      <div class="box-six" :style="{ backgroundColor: color3 }">
        <slot name="box3" />
      </div>
      <div class="box-six" :style="{ backgroundColor: color4 }">
        <slot name="box4" />
      </div>
      <div class="box-six" :style="{ backgroundColor: color5 }">
        <slot name="box5" />
      </div>
      <div class="box-six" :style="{ backgroundColor: color6 }">
        <slot name="box6" />
      </div>
    </div>
  </div>
</template>

<script setup>
const {
  color1 = 'var(--slidev-theme-primary)',
  color2 = 'var(--slidev-theme-primary)',
  color3 = 'var(--slidev-theme-primary)',
  color4 = 'var(--slidev-theme-primary)',
  color5 = 'var(--slidev-theme-primary)',
  color6 = 'var(--slidev-theme-primary)',
} = defineProps({
  color1: String,
  color2: String,
  color3: String,
  color4: String,
  color5: String,
  color6: String,
})
</script>

<style scoped>
.boxes-six-grid {
  position: absolute;
  top: 25%;
  left: 5%;
  width: 90%;
  height: 65%;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: repeat(2, 1fr);
  gap: 1.5rem;
}

.box-six {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  padding: 1.25rem;
  overflow: hidden;
  border-radius: 0px !important; /* rectangular, no rounded corners */
}

.box-six :deep(h2) {
  margin-top: 0;
  margin-bottom: 0.5rem;
  font-size: 1.2rem;
  font-weight: bold;
}

.box-six :deep(p) {
  margin-top: 0;
  margin-bottom: 0.5rem;
  font-size: 0.9rem;
  line-height: 1.3;
}

.box-six :deep(ul) {
  margin-top: 0;
  margin-bottom: 0.5rem;
  padding-left: 1.2rem;
  font-size: 0.9rem;
  list-style-type: disc;
}

.box-six :deep(li) {
  margin-bottom: 0.25rem;
}
</style>
