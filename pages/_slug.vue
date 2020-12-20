<template>
  <NuxtContent
    class="prose prose-sm sm:prose lg:prose-lg xl:prose-2xl mx-auto"
    :document="page"
  />
</template>

<script>
export default {
  async asyncData({ $content, params, error }) {
    const page = await $content(params.slug)
      .fetch()
      .catch((err) => {
        error({ statusCode: 404, message: 'Page not found' })
        // eslint-disable-next-line no-console
        console.error(err)
      })

    return {
      page
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
  }
}
</script>
