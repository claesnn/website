import { createRouter, createWebHistory } from "vue-router"

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      name: "home",
      component: () => import("../views/HomeView.vue"),
    },
    {
      path: "/about",
      name: "about",
      component: () => import("../views/AboutView.vue"),
    },
    {
      path: "/blog",
      name: "blog",
      component: () => import("../views/BlogView.vue"),
    },
    {
      path: "/photography",
      name: "photography",
      component: () => import("../views/PhotographyView.vue"),
    },
    {
      path: "/photography/:id",
      name: "photography-detail",
      component: () => import("../views/PhotographyDetailView.vue"),
    },
  ],
})

export default router
