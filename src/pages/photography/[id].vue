<script setup lang="ts">
const route = useRoute()

const id = "id" in route.params ? route.params.id : "default"
</script>

<template>
    <img class="mx-auto max-h-[calc(100vh-100px)]"
        :srcset="`/images/${id}-200.webp 200w, /images/${id}-420.webp 420w, /images/${id}-640.webp 640w, /images/${id}-960.webp 960w, /images/${id}-1280.webp 1280w`">
</template>
