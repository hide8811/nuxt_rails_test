<template>
  <div>
    <button
      type="button"
      name="button"
      @click="getMsg"
    >
      RailsからAPIを取得する
    </button>
    <div>
      {{ msg }}
    </div>
  </div>
</template>

<script>
import axios from "axios";
export default {
  data () {
    return {
      msg: ''
    }
  },
  methods: {
    getMsg () {
      axios.get('/api/v1/hello')
        .then(res=> console.log(res))
    }
  }
}
</script>