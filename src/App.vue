<template>
  <v-app id="app" width="100%">
     

    <Appbar/>
  <v-parallax
  id="parallax"
    height="400"
    src="./assets/pics/bg/pexels-photo-167699.jpeg"
  >
  </v-parallax>
    <About/>
  <v-parallax
  id="parallax"
    height="300"
    src="./assets/pics/bg/pexels-photo-167699.jpeg"
  >
  </v-parallax>

    <Projects/>
   <v-parallax
   id="parallax"
    height="300"
    src="./assets/pics/bg/pexels-photo-167699.jpeg"
  >
  </v-parallax>

    <Techs/>
   <!-- <v-parallax
   id="parallax"
    height="300"
    src="./assets/pics/bg/pexels-photo-167699.jpeg"
  >
  </v-parallax> -->

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
<style lang="scss" >
html, *, body {
  box-sizing: border-box  !important;
  scroll-behavior: smooth;
}
a {
  text-decoration: none !important;
  text-emphasis-color: none !important;
  color: rgb(255, 0, 128)!important;
  &:hover {
    color: rgb(255, 0, 128)!important;
;
  }
}
#parallax {
 @media (max-width:700px) {
   height: 200px !important;
   
 }
}
</style>
