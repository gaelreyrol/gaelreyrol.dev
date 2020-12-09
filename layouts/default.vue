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
      <a href="https://onestla.tech/" target="_blank" rel="noopener">
        #OnEstLaTech
      </a>
      <NuxtLink
        to="/about"
        active-class="underline"
        class="font-medium text-xl"
      >
        À propos
      </NuxtLink>
    </header>
    <Nuxt class="mb-16" />
    <footer class="p-4">Fait avec Nuxt.js et hébergé par Github</footer>
  </div>
</template>
