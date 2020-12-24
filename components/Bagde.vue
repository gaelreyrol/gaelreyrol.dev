<template>
  <span
    :class="[
      'inline-flex items-center px-3 py-1 rounded-full text-xs font-medium',
      `text-${color}-800`,
      `bg-${color}-100`
    ]"
  >
    {{ value }}
  </span>
</template>

<script>
export default {
  props: {
    value: {
      type: String,
      required: true
    },
    color: {
      type: String,
      default: 'gray'
    }
  }
}
</script>
