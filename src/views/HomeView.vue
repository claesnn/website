<script setup lang="ts">
useHead({
  title: "Claes Nymand Nilsson - Photography, Biotech and Programmming",
  // link: [
  //   {
  //     rel: "stylesheet",
  //     href: "index.css",
  //   },
  // ],
})
</script>

<template>
  <h1 class="font-Kurale text-6xl text-center mt-10 mb-2">Hi, I'm <strong>Claes Nymand Nilsson</strong> 👨‍🔬</h1>
  <p class="text-center mb-20 text-2xl text-slate-700">Welcome to my personal site, where I share
    <RouterLink to="/photos"><strong><u>photos</u></strong></RouterLink>,
    <RouterLink to="/software"><strong><u>software</u></strong></RouterLink> and
    talk
    <RouterLink to="/biotech"><strong><u>biotech</u></strong></RouterLink>!
  </p>

  <Card class="my-6 pb-10">
    <CardHeader>
      <h1 class="font-[Kurale] text-5xl">Photography</h1>
    </CardHeader>
    <CardContent>
      <p class="mb-5">I do photos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Id iste numquam enim quisquam?
        Nulla voluptas
        at eius necessitatibus perferendis illum, aspernatur dolore dolorum provident ipsum iusto ipsa molestias aperiam
        praesentium?</p>
      <Carousel class="m-10 max-h-screen">
        <CarouselContent>
          <CarouselItem><img src="/images/DSCF6640.webp"></CarouselItem>
          <CarouselItem><img src="/images/DSCF7046.webp" loading="lazy"></CarouselItem>
          <CarouselItem><img src="/images/DSCF7453.webp" loading="lazy"></CarouselItem>
          <CarouselItem><img src="/images/DSCF7477.webp" loading="lazy"></CarouselItem>
          <CarouselItem><img src="/images/DSCF7842.webp" loading="lazy"></CarouselItem>
        </CarouselContent>
        <CarouselPrevious />
        <CarouselNext />
      </Carousel>
    </CardContent>
  </Card>

  <Card>
    <CardHeader>
      <h1 class="font-[Kurale] text-5xl mb-5">Software</h1>
    </CardHeader>
    <CardContent>
      <p>I do photos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Id iste numquam enim quisquam? Nulla
        voluptas
        at eius necessitatibus perferendis illum, aspernatur dolore dolorum provident ipsum iusto ipsa molestias aperiam
        praesentium?</p>
    </CardContent>
  </Card>


  <h1 class="font-[Kurale] text-5xl mb-5 mt-15">Software</h1>
  <p>I do photos. Lorem ipsum dolor sit amet consectetur adipisicing elit. Id iste numquam enim quisquam? Nulla voluptas
    at eius necessitatibus perferendis illum, aspernatur dolore dolorum provident ipsum iusto ipsa molestias aperiam
    praesentium?</p>
  <div class="grid grid-cols-4 gap-2 ">

  </div>

  <div class="grid grid-cols-2 gap-4 my-5 mt-15">
    <div></div>
    <div>
      <h1 class="font-[Kurale] text-5xl mb-5">Photography</h1>
      <p>I do photos</p>
    </div>
  </div>
</template>