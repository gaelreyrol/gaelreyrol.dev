<template>
  <NuxtContent
    class="prose prose-sm sm:prose lg:prose-lg xl:prose-2xl mx-auto"
    :document="content"
  />
</template>

<script>
export default {
  async asyncData({ $content, params, error }) {
    const slug = params.slug || 'index'
    const content = await $content(slug)
      .fetch()
      .catch((err) => {
        error({ statusCode: 404, message: 'Page not found' })
        // eslint-disable-next-line no-console
        console.error(err)
      })

    return {
      content
    }
  }
}
</script>
