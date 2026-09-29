<template>
  <div class="slidev-layout">
    <h1><slot /></h1>
    <div class="team-chain">
      <div v-for="(member, i) in members" :key="i" class="team-member">
        <img :src="member.img" :alt="member.name" class="photo" />
        <div class="member-name">{{ member.name }}</div>
        <div v-if="member.role" class="member-role">{{ member.role }}</div>
      </div>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({ members: { type: Array, default: () => [] } })
</script>

<style scoped>
h1 {
  font-size: 2rem;
  font-weight: 800;
  margin-bottom: 0;
}

.team-chain {
  display: flex;
  justify-content: center;
  align-items: flex-end;
  padding: 2rem 2rem 0;
  gap: 2rem;
}

.team-member {
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

.photo {
  max-width: 200px;
  max-height: 250px;
  object-fit: contain;
}

.member-name {
  font-weight: 700;
  font-size: 1rem;
  line-height: 1.3;
  margin-top: 0.5rem;
}

.member-role {
  font-size: 0.8rem;
  color: #666;
  line-height: 1.3;
  margin-top: 0.15rem;
}
</style>
