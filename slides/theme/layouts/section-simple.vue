<template>
  <div class="slidev-layout section">
    <slot />

      <img src="/cc-logo.png" alt="Logo" class="section-logo" />

  </div>
</template>

<style>
.section {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100%;
  width: 100%;
  
  @apply text-6xl;

  .section-logo {
    margin-top: 4rem;
    max-width: 30%;
  }
}
</style>
