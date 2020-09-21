<template >
  <v-card width="100%">
    <v-navigation-drawer
      id="drawer"
      overlay-color="black"
      overlay-opacity="0.7"
      temporary
      fixed
     
      src="../assets/pics/bg/pexels-photo-4173624.jpeg"
      v-model="drawer"
    >
      <v-list nav dense color="white">
        <v-list>
          <v-list-item class="px-2" src="../assets/pics/bg/pexels-photo-4173624.jpeg">
            <v-icon id="arrow" x-large hover color="black" @click="drawer= !drawer">mdi-arrow-right</v-icon>
          </v-list-item>

          <v-list-item link>
            <v-list-item-content id="li">
              <v-list-item-title class="title">Lukasz Pelc</v-list-item-title>
              <v-list-item-subtitle>hide85x@gmail.com</v-list-item-subtitle>
            </v-list-item-content>
            <v-avatar size="50">
              <v-icon large color="pink">mdi-mail</v-icon>
              <!-- <img src="../assets/pics/me.jpg" alt="alt" /> -->
            </v-avatar>
          </v-list-item>
        </v-list>
        <v-divider></v-divider>
        <v-list-item-group active-class="pink--text ">
          <v-list-item v-for="i in icons" :key="i">
            <v-list-item-icon class="my-6">
              <v-icon py-15 large>{{i.i}}</v-icon>
            </v-list-item-icon>
            <v-list-item-title>{{i.txt}}</v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>

    <v-app-bar
    id="appbar"
      dark
      shrink-on-scroll
      height="200px"
      rounded="0"
      fixed
      contain
      src="../assets/pics/bg/pexels-photo-4173624.jpeg"
    >
      <v-icon id="arrow" class x-large @click="drawer= !drawer">mdi-menu</v-icon>
      <!-- <v-toolbar-title  class="d-md-none d-flex" >Get in Touch!</v-toolbar-title> -->

      <div class="ml-auto align-self-end">
        <v-btn v-for="l in links" id="links" :key="l" class="mx-11 pa-6 black white--text" icon>
          <a href="https://www.facebook.com/"><v-icon class="ml-14" id="icon" size="15px"> {{l}}</v-icon></a> 
        </v-btn>
      </div>
    </v-app-bar>
    <v-sheet id="scrolling-techniques" class="overflow-y-auto"></v-sheet>
  </v-card>
</template>

<script>
export default {
  name: "Appbar",
  data() {
    return {
      drawer: false,
      links: ["aboutme", "projects", "techstack", "footer"],
      icons: [
        { txt: "facebook", i: "mdi-facebook" },
        { txt: "linkedIn", i: "mdi-linkedin" },
        { txt: "insta", i: "mdi-instagram" },
        {txt:'github', i: 'mdi-github'}
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
#arrow:hover,
#links:hover {
  transform: rotate(360deg) scale(1.2);
  color: rgb(253, 34, 71) !important;
}
#drawer {
  box-shadow: 0 0 6px 2px rgb(214, 214, 214) !important;
}
#li {
  display: flex !important;
}
@media (max-width: 700px) {
    #appbar {
        
    }
  #links {
    margin: 0 !important;
    margin: 0 10px !important;
  }
  #icon {
    font-size: 10px !important;
    margin: 0 0 0 20px !important;
    transform:scale(1) !important
  }
}
</style>