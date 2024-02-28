<script setup lang="ts">
const IMAGECOUNT = 54

// TBD: Get sizes and alt text for all images
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
    <RouterLink v-for="image in IMAGECOUNT" :key="image" :to="`/photography/${image - 1}`">
      <img
        :srcset="`/images/${image - 1}-200.webp 200w, /images/${image - 1}-420.webp 420w, /images/${image - 1}-640.webp 640w, /images/${image - 1}-960.webp 960w,/images/${image - 1}-1280.webp 1280w`"
        :loading="image < 4 ? 'eager' : 'lazy'" :width="image < 10 ? 1280 : ''" :height="image < 10 ? 1920 : ''" />
    </RouterLink>
  </div>
</template>
