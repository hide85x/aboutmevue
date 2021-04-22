<template >
  <v-card width="100%" id="aboutme">
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

         <a href="mailto:hide85x@gmail.com"><v-list-item link>
            <v-list-item-content id="li">
              <v-list-item-title class="title">Lukasz Pelc</v-list-item-title>
              <v-list-item-subtitle>hide85x@gmail.com</v-list-item-subtitle>
            </v-list-item-content>
            <v-avatar size="50">
              <v-icon large color="pink">mdi-mail</v-icon>
              <!-- <img src="../assets/pics/me.jpg" alt="alt" /> -->
            </v-avatar>
          </v-list-item></a> 
        </v-list>
        <v-divider></v-divider>
        <v-list-item-group  v-for="i in icons" :key="i.i">
        <a target="blank" :href="i.link">  <v-list-item id="item" class="d-flex-row">
           <v-list-item-icon  class="my-6">
            <v-icon id="item" py-15 large>{{i.i}}</v-icon>
            </v-list-item-icon>
            <v-list-item-title>{{i.txt}}</v-list-item-title>
          </v-list-item></a>
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
        <v-btn v-for="l in links" id="links" :key="l.id" class="mx-11 pa-0 black" icon>
          <a :href="'#'+l" >
            <v-icon class="ml-15 pa-5" id="icon" size="17px">{{l}}</v-icon>
          </a>
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
        {
          txt: "facebook",
          i: "mdi-facebook",
          link: "https://www.facebook.com/RebelMonstah/",
        },

        {
          txt: "linkedIn",
          i: "mdi-linkedin",
          link: "https://www.linkedin.com/in/%C5%82ukasz-pelc-93aa31177/",
        },
        {
          txt: "insta",
          i: "mdi-instagram",
          link: "https://www.instagram.com/shalashaska85x/?hl=en",
        },
        {
          txt: "github",
          i: "mdi-github",
          link: "https://github.com/hide85x",
        },
      ],
    };
  },
};
</script>

<style lang="scss" scoped>
#arrow:hover,
#links:hover {
  transform: rotate(360deg) scale(1.1);
  color: rgb(255, 0, 128)!important;
}
#drawer {
  box-shadow: 0 0 6px 2px rgb(214, 214, 214) !important;
}
#li {
  display: flex !important;
}
a {
  color:white !important
}
#item:hover, #icon:hover{
color: rgb(255, 0, 128) !important;
}

@media (max-width: 700px) {

  #links {
    margin: 0 !important;
    margin: 0 12px !important;
  }
  #icon {
    font-size: 10px !important;
    margin: 0 0 0 20px !important;
    transform: scale(1) !important;
  }
}
</style>