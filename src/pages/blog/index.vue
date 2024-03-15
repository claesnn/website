<script setup lang="ts">
useHead({
    title: "Claes Nymand Nilsson - Blog",
})
</script>

<template>
    <p v-for="i in Array(15)">
        Lorem ipsum dolor sit amet consectetur adipisicing elit. Praesentium
        pariatur necessitatibus consequatur sequi nobis totam numquam exercitationem
        beatae temporibus consequuntur, ratione sapiente consectetur, perferendis
        cupiditate. Quas placeat earum impedit temporibus!
    </p>
    <p class="mt-5">
        <RouterLink to="/blog/my-test-blog" class="mt-10">Go to blog post 1</RouterLink>
    </p>

</template>
