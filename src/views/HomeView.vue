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

const images = [24, 46, 38, 41, 45]

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
  <h1 class="font-[Kurale] text-4xl md:text-6xl text-center mt-10 mb-2">
    Claes Nymand Nilsson
  </h1>
  <p class="text-center mb-16 text-slate-600 max-w-3xl mx-auto">
    I am biotech scientist with a flair for
    <RouterLink to="/photography"><u>photography</u></RouterLink>, <RouterLink to="/software"><u>coding</u></RouterLink>
    and sports. I
    believe in the value of sharing and on this site you can browse through all
    of my published work.
  </p>

  <Card class="my-10">
    <CardHeader>
      <RouterLink to="/photography">
        <h1 class="font-[Kurale] text-5xl text-center">Photography</h1>
      </RouterLink>
    </CardHeader>
    <CardContent class="px-10 py-6">
      <Carousel class="mx-5 mb-5">
        <CarouselContent>
          <CarouselItem v-for="(image, index) in images" :key="image">
            <RouterLink :to="`/photography/${image}`">
              <img
                :srcset="`/images/${image}-200.webp 200w, /images/${image}-420.webp 420w, /images/${image}-640.webp 640w, /images/${image}-960.webp 960w,/images/${image}-1280.webp 1280w`"
                width="1125px" height="752px" :loading="index === 0 ? 'eager' : 'lazy'" />
            </RouterLink>
          </CarouselItem>
        </CarouselContent>
        <CarouselPrevious />
        <CarouselNext />
      </Carousel>
      <div class="flex justify-center">
        <RouterLink to="/photography">
          <Button variant="outline" to="/photography">View More</Button>
        </RouterLink>
      </div>
    </CardContent>
  </Card>

  <Card class="my-10">
    <CardHeader>
      <h1 class="font-[Kurale] text-5xl text-center">Software</h1>
    </CardHeader>
    <CardContent>
      <Card class="max-w-sm p-6 mx-auto">
        <h1 class="text-xl font-bold mb-3">Animal quiz</h1>
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
      </Card>
    </CardContent>
  </Card>

  <Card class="my-10">
    <CardHeader>
      <h1 class="font-[Kurale] text-5xl text-center">Biotech</h1>
    </CardHeader>
    <CardContent>
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
    </CardContent>
  </Card>
</template>
