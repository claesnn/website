<script setup lang="ts">
const IMAGECOUNT = 54

// TBD: Make alt text for images
const photos: string[] = [
  "A photo of a boat in Svanemøllen Harbour",
  "A photo of the Adventure Tower in south zealand",
  "A photo of the stairs of Adventure Tower in south zealand",
  "A photo of the view from Adventure Tower in south zealand",
]
</script>

<template>
  <h1 class="font-[Kurale] text-5xl text-center mt-5 mb-10">Photography</h1>
  <div class="grid md:grid-cols-2 xl:grid-cols-3 gap-3">
    <RouterLink v-for="photo in IMAGECOUNT" :key="photo" :to="`/photography/${photo}`">
      <img :src="`/images/${photo}.webp`" :width="photo < 7 ? 1280 : ''" :height="photo < 7 ? 1920 : ''"
        :loading="photo < 4 ? 'eager' : 'lazy'" />
    </RouterLink>
  </div>
</template>
