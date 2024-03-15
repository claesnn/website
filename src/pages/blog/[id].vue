<script setup lang="ts">
const route = useRoute()
const id = "id" in route.params ? route.params.id : "default"
</script>

<template>
    <div>
        <h1>Blog post {{ id }}</h1>
    </div>
</template>
