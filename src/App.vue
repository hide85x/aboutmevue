<template>
  <v-app id="app" width="100%">
     

    <Appbar/>
  <v-parallax
    height="400"
    src="./assets/pics/bg/pexels-photo-167699.webp"
  >
  </v-parallax>
    <About/>
  <v-parallax
    height="300"
    src="./assets/pics/bg/pexels-photo-167699.webp"
  >
  </v-parallax>

    <Projects/>
   <v-parallax
    height="300"
    src="./assets/pics/bg/pexels-photo-167699.webp"
  >
  </v-parallax>

    <Techs/>
   <v-parallax
    height="300"
    src="./assets/pics/bg/pexels-photo-167699.webp"
  >
  </v-parallax>

    <Footer/>
  </v-app>
</template>

<script>
import Appbar from './components/Appbar';
import About from './components/About';
import Footer from './components/Footer'
import Projects from './components/Projects';
import Techs from './components/Technologies'
export default {
  name: "App",
  data() {
    return {
    };
  },

  components: {
    Appbar,About, Footer, Projects, Techs
  },
};
</script>
<style lang="scss">
html, *, body {
  box-sizing: border-box  !important;
}
a {
  text-decoration: none !important;
  text-emphasis-color: none !important;
  color: rgb(255, 0, 85)!important;
}
</style>
