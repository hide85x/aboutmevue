<template >
   <v-footer
   id="footer"
    padless
    class="mt-0 pt-0"
  >
    <v-card
      id="footercard"
      flat
      tile
      class="indigo lighten-1 white--text text-center"
    >
      <v-card-text>
        <v-btn
          v-for="icon in icons"
          :key="icon.i"
          class="mx-4 pa-6 black white--text"
          icon
        >
        <a class="white--text" target="blank" :href="icon.link">
          <v-icon  size="38px">{{ icon.i }}</v-icon></a>
        </v-btn>
      </v-card-text>

      <v-card-text class="white--text pt-0">
        Phasellus feugiat arcu sapien, et iaculis ipsum elementum sit amet. Mauris cursus commodo interdum. Praesent ut risus eget metus luctus accumsan id ultrices nunc. Sed at orci sed massa consectetur dignissim a sit amet dui. Duis commodo vitae velit et faucibus. Morbi vehicula lacinia malesuada. Nulla placerat augue vel ipsum ultrices, cursus iaculis dui sollicitudin. Vestibulum eu ipsum vel diam elementum tempor vel ut orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
      </v-card-text>

      <v-divider></v-divider>

      <v-card-text class="white--text">
        {{ new Date().getFullYear() }} — <strong>Vuetify</strong>
      </v-card-text>
    </v-card>
  </v-footer>
</template>

<script>
export default {
 data: () => ({
     
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
       
    }),
}
</script>

<style lang="scss" scoped>
// #footer {
//     margin-top: 100px;
// }
#footercard {
    background-image: url("../assets/pics/bg/pexels-photo-4173624.jpeg");
    background-size: cover;
    border: none;
    
}
a:hover{
color: rgb(255, 0, 128) !important;
}

</style>