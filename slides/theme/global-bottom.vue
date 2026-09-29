<template>
  <div v-if="!excludedLayouts.includes($slidev.nav.currentLayout)" class="slidev-footer">
    <div class="footer-logo">
      <img src="/cc-logo.png" alt="codecentric logo" />
    </div>
    <div class="footer-page-number">
      {{ $slidev.nav.currentPage }} 
    </div>
  </div>
</template>

<script setup>
const excludedLayouts = ['cover', 'section-simple', 'full-image']
</script>

<style scoped>
.slidev-footer {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  display: flex;
  justify-content: space-between;
  align-items: flex-end;
  padding: 1rem 2.5rem;
  pointer-events: none;
  z-index: 10;
}

.footer-logo img {
  max-width: 100px;
  height: auto;
}

.footer-page-number {
  font-size: 0.875rem;
  color: #333;
  font-weight: 500;
}
</style>
