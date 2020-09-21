<template >
  <v-card  id="techstack" class="py-9" dark outlined>
    <v-card-title primary-title class="justify-center">
      <h1>TechStack</h1>
    </v-card-title>
    <v-expansion-panels class="px-16">
      <v-expansion-panel v-for="(item,i) in 5" :key="i">
        <v-expansion-panel-header class="blue-grey darken-4">Item</v-expansion-panel-header>
        <v-expansion-panel-content class="blue-grey darken-1">
          <v-card-title primary-title>title</v-card-title>
          <v-card-text>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, quae sapiente ad impedit nesciunt aliquam quaerat! Minus iusto quidem cumque repudiandae facere a?</v-card-text>
          <!-- <v-row>
            <v-img class="pa-2 ma-2 grey lighten-3" width="200" height="200" src="../assets/pics/node.png"></v-img>
            <v-img class="pa-2 ma-2 grey lighten-3" width="200" height="200" src="../assets/pics/node.png"></v-img>
            <v-img class="pa-2 ma-2 grey lighten-3" width="200" height="200" src="../assets/pics/node.png"></v-img>
            <v-img class="pa-2 ma-2 grey lighten-3" width="200" height="200" src="../assets/pics/node.png"></v-img>
            <v-img class="pa-2 ma-2 grey lighten-3" width="200" height="200" src="../assets/pics/node.png"></v-img>
          </v-row> -->
        </v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    techstack: {
      frontend:['html, css, js(es6), typescript','vue'],
      backend: ['node', 'express', 'nestJs', 'ORM', 'unit tests'],
      database:['mongoDb', 'mySql', 'PostrgeSql']
    }
  }),
};
</script>

<style lang="scss" scoped>
</style>