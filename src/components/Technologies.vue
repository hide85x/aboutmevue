<template >
  <v-card id="techstack" class="py-9" dark outlined>
    <v-card-title primary-title class="justify-center">
      <h4>What I use</h4>
    </v-card-title>
    <v-expansion-panels class="px-16 text-center">
      <v-expansion-panel v-for="(item, i) in techstack" :key="i">
        <v-spacer></v-spacer>
        <v-expansion-panel-header class="blue-grey darken-4 justify-center ">{{
          item.title
        }}</v-expansion-panel-header>
        <v-expansion-panel-content class="blue-grey darken-1">
          <!-- <v-card-title primary-title>{{ item.title }}</v-card-title> -->
          <div class="d-inline-flex" v-for="tech in item.techs" :key="tech">
            <v-chip class="ma-2"  color="pink" text-color="white">
              {{tech}}
            </v-chip>
          </div>
          <!-- <v-row>
            <v-img class="pa-2 ma-2 grey lighten-3" width="100" height="100" src="../assets/pics/node.png"></v-img>
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
    techstack: [
      {
        title: "frontend",
        techs: [
          "html",
          "css(scss)",
          "bootstrap",
          "materialize",
          "js(es6)",
          "jQuery",
          
          "vue",
          "vuex",
          "vuetify"
        ],
      },
      {
        title: "backend",
        techs: [
          "node",
          "typescript",
          "handlebars",
          "express",
          "nestJs",
          "ORM",
          "unit testing (Mocha Chai Sinon)",
          "websockets",
        ],
      },
      { title: "database", techs: ["mongoDb", "mySql", "PostrgeSql"] },
    ],
  }),
};
</script>

<style lang="scss" scoped>
</style>