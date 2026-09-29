<script setup lang="ts">
defineProps<{
  icon: string
  items: string[]
}>()
</script>

<template>
  <ul class="icon-list">
    <li v-for="(item, index) in items" :key="index" class="icon-list-item">
      <span class="icon-list-icon" v-html="icon"></span>
      <span class="icon-list-content" v-html="item"></span>
    </li>
  </ul>
</template>

<style scoped>
.icon-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.icon-list-item {
  display: flex;
  align-items: flex-start;
  margin-bottom: 0.75rem;
  gap: 0.75rem;
}

.icon-list-icon {
  flex-shrink: 0;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-width: 1.5rem;
}

.icon-list-content {
  flex: 1;
}
</style>
