<template>
  <div>
    <button
      type="button"
      name="button"
      @click="getMsg"
    >
      RailsからAPIを取得する
    </button>
    <div
      v-for="(msg, i) in msgs"
      :key="i"
    >
      {{ msg }}
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data () {
    return {
      msgs: []
    }
  },
  methods: {
    getMsg () {
      axios.get('/api/v1/hello')
        .then(res => this.msgs.push(res))
    }
  }
}
</script>