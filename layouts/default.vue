<template>
  <div>
    <header
      class="p-8 flex flex-col items-center space-y-2 sm:space-x-8 sm:space-y-0 sm:flex-row"
    >
      <NuxtLink to="/" active-class="bg-gray-900 p-px rounded-full">
        <img
          class="rounded-full w-12 h-12 sm:h-16 sm:w-16 lg:h-24 lg:w-24"
          src="~/static/avatar.jpeg"
          alt="Gaël Reyrol"
        />
      </NuxtLink>
      <NuxtLink
        to="/about"
        active-class="underline"
        class="font-medium text-sm sm:text-md lg:text-xl"
      >
        À propos
      </NuxtLink>
      <NuxtLink
        to="/stack"
        active-class="underline"
        class="font-medium text-sm sm:text-md lg:text-xl"
      >
        Ma stack
      </NuxtLink>
      <a
        class="text-sm sm:text-md lg:text-xl"
        href="https://onestla.tech/"
        target="_blank"
        rel="noopener"
      >
        #OnEstLaTech
      </a>
    </header>
    <Nuxt class="px-4 pb-16" />
    <footer class="p-4 border-t-2 text-sm sm:text-md lg:text-xl">
      Fait avec <strong>Nuxt.js</strong> & <strong>Tailwind CSS</strong> /
      Hébergé par <strong>Clever Cloud</strong>
    </footer>
  </div>
</template>
