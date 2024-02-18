<script setup lang="ts">
</script>

<template>
  <div class="flex flex-col h-screen">
    <header class="border-b border-slate-200">
      <div class="flex justify-between max-w-7xl px-3 py-2 place-items-center">
        <RouterLink to="/">
          <h1 class="font-[Kurale] text-lg sm:text-2xl">Claes Nymand Nilsson</h1>
        </RouterLink>
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
    <main class="px-3 py-2 max-w-7xl mb-auto">
      <RouterView />
    </main>
    <footer class="px-3 py-2 border-t border-slate-200">
      <h2>Hello from footer!</h2>
    </footer>
  </div>
</template>

<style>
.router-link-active button {
  text-decoration: underline;
}
</style>