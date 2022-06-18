<template>
  <div class="flex-row items-center space-x-1 space-y-1">
    <BagdeItem v-for="(tag, index) in value" :key="index" :value="tag" />
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
