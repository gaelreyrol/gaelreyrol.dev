<template>
  <div>
    <header class="p-8 flex items-center space-x-8">
      <NuxtLink to="/" active-class="bg-gray-900 p-px rounded-full">
        <img
          class="rounded-full h-12 sm:h-16 lg:h-24"
          src="~/static/avatar.jpeg"
          alt="Gaël Reyrol"
        />
      </NuxtLink>
      <NuxtLink
        to="/about"
        active-class="underline"
        class="font-medium text-xl"
      >
        À propos
      </NuxtLink>
    </header>
    <Nuxt />
  </div>
</template>
