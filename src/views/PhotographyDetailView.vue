<script setup lang="ts">
const route = useRoute()
</script>

<template>
  <img class="mx-auto max-h-[calc(100vh-100px)]"
    :srcset="`/images/${route.params.id}-200.webp 200w, /images/${route.params.id}-420.webp 420w, /images/${route.params.id}-640.webp 640w, /images/${route.params.id}-960.webp 960w, /images/${route.params.id}-1280.webp 1280w`">
</template>


