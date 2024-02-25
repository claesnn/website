<script setup lang="ts">
const route = useRoute()
const image = `/images/${route.params.id}.webp`
</script>

<template>
  <img
    :src="image"
    class="max-h-screen mx-auto py-10" />
</template>
