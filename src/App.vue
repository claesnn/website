<script setup lang="ts">
</script>

<template>
  <header>
    <div>
      <h1 class="font-[Kurale] text-3xl">Claes Nymand Nilsson</h1>
      <nav>
        <RouterLink to="/">
          <Button variant="link">
            Home
          </Button>
        </RouterLink>
        <RouterLink to="/about">
          <Button variant="link">
            About</Button>
        </RouterLink>
      </nav>
    </div>
  </header>

  <RouterView />
</template>