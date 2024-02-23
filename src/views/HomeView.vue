<script setup lang="ts">
import { FormField } from "@/components/ui/form"
import { useToast } from "@/components/ui/toast/use-toast"
import { useForm } from "vee-validate"
import { object, string } from "yup"

useHead({
  title: "Claes Nymand Nilsson - Photography, Biotech and Programmming",
})

const schema = object({
  animal: string().required().min(3).max(60),
})

const form = useForm({
  initialValues: {
    animal: "",
  },
  validationSchema: schema,
})

const { toast } = useToast()

const onSubmit = form.handleSubmit((values) => {
  const animal = values.animal.toLowerCase()
  const message =
    animal.includes("cat") || animal.includes("kitten")
      ? "🎉🎉🎉 You guessed it! Meow! 🎉🎉🎉"
      : animal.includes("dog")
      ? "Close, but no cigar!"
      : animal.includes("dolphin")
      ? "Great guess, but no, equally playful though!"
      : animal.includes("shark")
      ? "No, but they're both predators"
      : animal.includes("hamster") ||
        animal.includes("guinea pig") ||
        animal.includes("rabbit")
      ? "No, but they're both small and cute"
      : "Try again!"
  toast({
    description: message,
  })
})
</script>

<template>
  <h1 class="font-Kurale text-6xl text-center mt-10 mb-2">
    Hi, I'm <strong>Claes Nymand Nilsson</strong> 👨‍🔬
  </h1>
  <p class="text-center mb-20 text-2xl text-slate-700">
    Welcome to my personal site, where I share
    <RouterLink to="/photography"
      ><strong><u>photography</u></strong></RouterLink
    >,
    <RouterLink to="/software"
      ><strong><u>software</u></strong></RouterLink
    >
    and talk
    <RouterLink to="/biotech"
      ><strong><u>biotech</u></strong></RouterLink
    >!
  </p>

  <Card class="my-6">
    <CardHeader>
      <h1 class="font-[Kurale] text-5xl text-center">Photography</h1>
    </CardHeader>
    <CardContent>
      <div class="bg-slate-50 p-6 rounded-lg">
        <p class="max-w-xl text-justify mx-auto">
          I enjoy the creative outlet of photography and the enhanced experience
          of new places. I believe photography has changed my perspective on the
          world around me and I hope to share some of that excitement, wonder
          and beauty with you. Enjoy the photos and feel free to reach out on
          Instagram for a chat (everyone's welcome)!
        </p>
      </div>
      <Carousel class="m-10 max-h-screen">
        <CarouselContent>
          <CarouselItem
            ><img
              src="/images/DSCF6640.webp"
              width="1125px"
              height="752px"
          /></CarouselItem>
          <CarouselItem
            ><img
              src="/images/DSCF7046.webp"
              loading="lazy"
              width="1125px"
              height="752px"
          /></CarouselItem>
          <CarouselItem
            ><img
              src="/images/DSCF7453.webp"
              loading="lazy"
              width="1125px"
              height="752px"
          /></CarouselItem>
          <CarouselItem
            ><img
              src="/images/DSCF7477.webp"
              loading="lazy"
              width="1125px"
              height="752px"
          /></CarouselItem>
          <CarouselItem
            ><img
              src="/images/DSCF7842.webp"
              loading="lazy"
              width="1125px"
              height="752px"
          /></CarouselItem>
        </CarouselContent>
        <CarouselPrevious />
        <CarouselNext />
      </Carousel>
    </CardContent>
  </Card>

  <Card class="my-6">
    <CardHeader>
      <h1 class="font-[Kurale] text-5xl text-center">Software</h1>
    </CardHeader>
    <CardContent>
      <div class="bg-slate-50 p-6 rounded-lg">
        <p class="max-w-xl text-justify mx-auto">
          I've been coding since I was very young making websites and
          implementing automation. Whilst I have the capacity to quickly pick up
          and work with any language, I prefer to work with Python and
          TypeScript. For example, this website is built with Vite, Vue 3 and
          Tailwind CSS and built as a SPA. The site is deployed using Docker on
          a cloud service. Try the example below and if you're up for it, I have
          some more example projects.
        </p>
      </div>
      <Card class="max-w-sm p-6 mx-auto my-10">
        <h1 class="text-xl font-bold mb-3">Animal guessing game</h1>
        <form
          @submit="onSubmit"
          class="flex flex-col">
          <FormField
            v-slot="{ componentField }"
            name="animal">
            <FormItem>
              <FormLabel>Animal</FormLabel>
              <FormControl>
                <Input
                  v-bind="componentField"
                  class="w-full" />
              </FormControl>
              <FormDescription>Please enter the cutest animal</FormDescription>
              <FormMessage />
            </FormItem>
          </FormField>
          <Button
            type="submit"
            class="mt-4"
            >Submit</Button
          >
        </form>
      </Card>
    </CardContent>
  </Card>

  <Card class="my-6">
    <CardHeader>
      <h1 class="font-[Kurale] text-5xl text-center">Biotech</h1>
    </CardHeader>
    <CardContent>
      <div class="bg-slate-50 p-6 rounded-lg">
        <p class="max-w-xl text-justify mx-auto">
          I've been working in biotech for the past 7+ years and I'm currently
          employed with Novo Nordisk. I may write about Biotech and Software in
          the future. Please reach out if you're interesting in collaborating or
          have any questions to any of my hopefully many articles in the future.
        </p>
      </div>
    </CardContent>
  </Card>
</template>
