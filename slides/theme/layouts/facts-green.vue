<template>
  <div class="slidev-layout facts-outer">
    <div class="facts-bg">
      <div class="facts-content">
        <div class="facts-left">
          <div v-for="(item, i) in items" :key="i" class="fact-item">
            <img v-if="item.icon" :src="item.icon" alt="" class="fact-icon" />
            <div class="fact-text">{{ item.text }}</div>
          </div>
        </div>
        <div v-if="image" class="facts-right">
          <img :src="image" alt="" class="facts-map" />
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
defineProps({
  image: String,
  items: { type: Array, default: () => [] }
})
</script>

<style scoped>
.facts-outer {
  padding: 2rem;
  display: flex;
  align-items: center;
  justify-content: center;
}

.facts-bg {
  background: var(--slidev-theme-primary);
  border-radius: 0;
  width: 100%;
  height: 85%;
  padding: 2.5rem 3rem;
}

.facts-content {
  display: flex;
  height: 100%;
  gap: 1rem;
}

.facts-left {
  flex: 1;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 2rem;
  align-content: start;
}

.fact-item {
  display: flex;
  flex-direction: column;
  gap: 0.5rem;
}

.fact-icon {
  width: 3rem;
  height: 3rem;
  object-fit: contain;
}

.fact-text {
  font-size: 1.15rem;
  font-weight: 800;
  color: #000;
  line-height: 1.3;
}

.facts-right {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: center;
}

.facts-map {
  max-width: 100%;
  max-height: 100%;
  object-fit: contain;
}
</style>
