<template>
  <NuxtContent
    class="prose prose-sm sm:prose lg:prose-lg xl:prose-2xl mx-auto"
    :document="page"
  />
</template>

<script>
export default {
  async asyncData({ $content, error }) {
    const page = await $content('index')
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
    return {
      titleTemplate: null
    }
  }
}
</script>
