<template>
  <div class="inline-flex items-center space-x-1">
    <Bagde v-for="(tag, index) in value" :key="index" :value="tag" />
  </div>
</template>

<script>
export default {
  props: {
    value: {
      type: Array,
      default: () => []
    }
  }
}
</script>
