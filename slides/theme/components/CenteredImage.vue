<script setup lang="ts">
defineProps<{
  heading?: string
  src: string
  imageClass?: string
}>()
</script>

<template>
  <div class="flex flex-col items-center justify-center h-full">
    <h1 v-if="heading" class="mb-4">{{ heading }}</h1>
    <img :src="src" :class="imageClass || 'h-85%'" />
  </div>
</template>
