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
      <a
        class="text-sm sm:text-md lg:text-xl"
        href="https://onestla.tech/"
        target="_blank"
        rel="noopener"
      >
        #OnEstLaTech
      </a>
      <NuxtLink
        to="/about"
        active-class="underline"
        class="font-medium text-sm sm:text-md lg:text-xl"
      >
        À propos
      </NuxtLink>
    </header>
    <Nuxt class="mb-16" />
    <footer class="p-4">
      Fait avec <strong>Nuxt.js</strong> et hébergé par
      <strong>Clever Cloud</strong>
    </footer>
  </div>
</template>
