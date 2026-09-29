<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'

defineProps<{
  title?: string
  maxHeight?: string
}>()

const scrollContainer = ref<HTMLElement | null>(null)
const showTopIndicator = ref(false)
const showBottomIndicator = ref(false)

const updateIndicators = () => {
  if (!scrollContainer.value) return
  
  const { scrollTop, scrollHeight, clientHeight } = scrollContainer.value
  
  showTopIndicator.value = scrollTop > 10
  showBottomIndicator.value = scrollTop + clientHeight < scrollHeight - 10
}

onMounted(() => {
  if (scrollContainer.value) {
    updateIndicators()
    scrollContainer.value.addEventListener('scroll', updateIndicators)
    
    // Check on resize too
    window.addEventListener('resize', updateIndicators)
  }
})

onUnmounted(() => {
  if (scrollContainer.value) {
    scrollContainer.value.removeEventListener('scroll', updateIndicators)
  }
  window.removeEventListener('resize', updateIndicators)
})
</script>

<template>
  <div class="scrollable-prompt-container">
    <h2 v-if="title" class="prompt-title">{{ title }}</h2>
    <div class="scroll-wrapper">
      <div 
        v-show="showTopIndicator" 
        class="scroll-indicator top"
      >
        ^^^
      </div>
      <div 
        ref="scrollContainer"
        class="scrollable-content" 
        :style="{ maxHeight: maxHeight || '400px' }"
      >
        <slot />
      </div>
      <div 
        v-show="showBottomIndicator" 
        class="scroll-indicator bottom"
      >
        ...
      </div>
    </div>
  </div>
</template>

<style scoped>
.scrollable-prompt-container {
  display: flex;
  flex-direction: column;
  height: 100%;
}

.prompt-title {
  margin-bottom: 0.5rem;
  flex-shrink: 0;
}

.scroll-wrapper {
  position: relative;
  flex: 1;
}

.scrollable-content {
  overflow-y: auto;
  overflow-x: hidden;
  height: 100%;
  padding: 0.25rem 0;
}

/* Hide scrollbar */
.scrollable-content::-webkit-scrollbar {
  width: 0;
  display: none;
}

.scrollable-content {
  scrollbar-width: none;
  -ms-overflow-style: none;
}

.scroll-indicator {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
  font-size: 0.9rem;
  opacity: 0.5;
  pointer-events: none;
  z-index: 10;
  color: currentColor;
  transition: opacity 0.3s ease;
}

.scroll-indicator.top {
  top: 0;
}

.scroll-indicator.bottom {
  bottom: 0;
}
</style>
