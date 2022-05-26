<template>
  <div class="prose prose-sm sm:prose lg:prose-lg xl:prose-2xl mx-auto">
    <h3>Mes projects</h3>
    <div
      v-for="(project, index) in projects"
      :key="index"
      class="flex flex-col space-y-1 border rounded-md p-4 mb-4"
    >
      <div
        class="flex flex-col sm:flex-row items-start space-y-2 sm:space-y-0 sm:space-x-2 sm:items-center"
      >
        <NuxtLink :to="project.path">{{ project.title }}</NuxtLink>
        <Tags :value="project.tags" />
      </div>
      <span class="block text-sm sm:text-md md:text-xl">
        {{ project.description }}
      </span>
      <span class="block text-xs text-right sm:text-left sm:text-sm italic">
        Démarré le {{ formatDate(project.date || project.createdAt) }}
      </span>
    </div>
  </div>
</template>

<script>
import dayjs from 'dayjs'
import 'dayjs/locale/fr'

dayjs.locale('fr')

const localizedFormat = require('dayjs/plugin/localizedFormat')
dayjs.extend(localizedFormat)

export default {
  async asyncData({ $content, error }) {
    const projects = await $content('projects')
      .fetch()
      .catch((err) => {
        error({ statusCode: 404, message: 'Page not found' })
        // eslint-disable-next-line no-console
        console.error(err)
      })

    return {
      projects
    }
  },
  data() {
    return {
      page: {
        title: 'Mes projets'
      },
      projects: []
    }
  },
  head() {
    const { title, description } = this.page

    return {
      title,
      meta: [
        { hid: 'description', name: 'description', content: description },
        // Open Graph
        { hid: 'og:title', property: 'og:title', content: title },
        {
          hid: 'og:description',
          property: 'og:description',
          content: description
        },
        // Twitter Card
        { hid: 'twitter:title', name: 'twitter:title', content: title },
        {
          hid: 'twitter:description',
          name: 'twitter:description',
          content: description
        }
      ]
    }
  },
  methods: {
    formatDate(date) {
      return dayjs(date).format('LL')
    }
  }
}
</script>
