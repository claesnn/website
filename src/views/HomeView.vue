<script setup lang="ts">
import { FormField } from "@/components/ui/form"
import { useToast } from "@/components/ui/toast/use-toast"
import { useForm } from "vee-validate"
import { object, string } from "yup"

useHead({
  title: "Claes Nymand Nilsson - Photography, Biotech and Programmming",
})

type Publication = {
  year: string
  title: string
  authors: string
  doi: string
}

const images = [24, 45, 2, 7, 38, 41,]

const publications: Publication[] = [
  {
    year: "2015",
    title:
      "Versatile microscale screening platform for improving recombinant protein productivity in Chinese hamster ovary cells",
    authors:
      "Henning Gram Hansen, <strong>Claes Nymand Nilsson</strong>, Anne Mathilde Lund, Stefan Kol, Lise Marie Grav, Magnus Lundqvist, Johan Rockberg, Gyun Min Lee, Mikael Rørdam Andersen, Helene Faustrup Kildegaard",
    doi: "10.1038/srep18016",
  },
]

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

const navigate = (url: string) => {
  window.location.href = url
}
</script>

<template>

  <h1 class="font-[Kurale] text-3xl sm:text-4xl md:text-5xl lg:text-6xl xl:text-7xl mt-10 text-center">
    Hi, I'm Claes Nymand Nilsson
  </h1>
  <div class="max-w-3xl mx-auto mt-8">
    <div class="flex ">
      <img src="/profile-pic.png" class="w-20 h-20 rounded-[4rem] mr-5" />
      <p class="">
        I am Danish biotech scientist with a 1000 side-hobbies. I have a passion for
        <RouterLink to="/photography"><u>photography</u></RouterLink>,
        <RouterLink to="/software"><u>coding</u></RouterLink>,
        biotech and sports, amongst other things. I share my thoughts on those hobbies and the world at large through my
        <RouterLink to="/software"><u>blog</u></RouterLink>. Come follow along, when I dig into photo composition,
        python package management, javascript framework-wars
        and coffee tricks with diminishing returns.
      </p>
    </div>
    <div class="flex min-w-full justify-center mt-6">
      <RouterLink to="/blog">
        <Button class="align-center px-8 py-4">Straight to the blog!</Button>
      </RouterLink>
    </div>
  </div>

  <hr class="my-12">

  <RouterLink to="/photography">
    <h1 class="font-[Kurale] text-5xl mb-10">Photography</h1>
  </RouterLink>
  <div class="grid sm:grid-cols-2 gap-3">
    <div v-for="(image, index) in images" :key="image">
      <RouterLink :to="`/photography/${image}`">
        <img
          :srcset="`/images/${image}-200.webp 200w, /images/${image}-420.webp 420w, /images/${image}-640.webp 640w, /images/${image}-960.webp 960w,/images/${image}-1280.webp 1280w`"
          :loading="index === 0 ? 'eager' : 'lazy'" />
      </RouterLink>
    </div>
  </div>

  <div class="flex justify-center mt-3">
    <RouterLink to="/photography">
      <Button variant="ghost" to="/photography"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
          viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
          stroke-linejoin="round" class="lucide lucide-more-horizontal">
          <circle cx="12" cy="12" r="1" />
          <circle cx="19" cy="12" r="1" />
          <circle cx="5" cy="12" r="1" />
        </svg></Button>
    </RouterLink>
  </div>

  <hr class="my-12">

  <h1 class="font-[Kurale] text-5xl mb-10">Software</h1>

  <div class="bg-gray-50 py-10">
    <Card class="max-w-sm mx-auto">
      <CardHeader>
        <h1 class="text-xl font-bold">Animal quiz</h1>
      </CardHeader>
      <CardContent>

        <form @submit="onSubmit" class="flex flex-col">
          <FormField v-slot="{ componentField }" name="animal">
            <FormItem>
              <FormLabel>Animal</FormLabel>
              <FormControl>
                <Input v-bind="componentField" class="w-full" />
              </FormControl>
              <FormDescription>Please enter the cutest animal</FormDescription>
              <FormMessage />
            </FormItem>
          </FormField>
          <Button type="submit" class="mt-4">Submit</Button>
        </form>
      </CardContent>
    </Card>
  </div>

  <hr class="my-12 mx-auto">


  <h1 class="font-[Kurale] text-5xl mb-10">Biotech</h1>

  <Table>
    <TableHeader>
      <TableRow>
        <TableHead>Year</TableHead>
        <TableHead>Title</TableHead>
        <TableHead>Authors</TableHead>
        <TableHead>DOI</TableHead>
      </TableRow>
    </TableHeader>
    <TableBody>
      <TableRow v-for="publication in publications" class="hover:cursor-pointer"
        @click="() => navigate(`https://doi.org/${publication.doi}`)">
        <TableCell>{{ publication.year }}</TableCell>
        <TableCell>{{ publication.title }}</TableCell>
        <TableCell v-html="publication.authors"></TableCell>
        <TableCell>{{ publication.doi }}</TableCell>
      </TableRow>
    </TableBody>
  </Table>

</template>

<style>
.photo-container {
  max-height: calc(100vh - 100px);
}

.profile-pic {
  -webkit-filter: grayscale(100%);
  filter: grayscale(100%);

}
</style>