<template>
  <v-sheet class="mx-auto white--text" dark elevation="8" width="100%">
    <v-card-title class="justify-center text-center" primary-title>let's talk about what I do</v-card-title>
    <v-card-text id="content" class="overline pa-6 text-center">
      For over a year now, through various crash courses, books, youtube lectures, IT meetings and
      my own ways around the code, I'm trying to learn the best practices for software development,
      after this time I'm starting to have more clear vision about what I want to learn, what tools
      and technologies would be most useful for me and what I would like to do with that knowledge
      in the future projects. I'm constantly learning web technologies(html, css, java script, jquery,
      angular,meterialize, bootstrap), but with the use of NodeJs, express, template engines and MongoDB
      data bases I discovered a lot more can be done with use of java script! I'm also keenly interested
      in the Internet Of Things world, and with my RaspberryPi I'm trying to connect my JS with the outside world ;)
    </v-card-text>
    <v-slide-group id="carousel" v-model="model" class="pa-4">
      <v-slide-item v-for="pro in projects" :key="pro.id" v-slot:default="{ active, toggle }">
        <v-card
          id="card"
          :color="active ? 'pink' : 'grey lighten-1'"
          class="ma-2 mx-2-auto"
          height="300"
          width="500"
          @click="toggle"
        >
          <v-img cover height="250px" :src="pro.src"></v-img>
          <v-row class align="end" justify="center">
            <v-scale-transition>
              <v-icon v-if="active" color="white" size="48" v-text="'mdi-close-circle-outline'"></v-icon>
            </v-scale-transition>
          </v-row>
        </v-card>
      </v-slide-item>
    </v-slide-group>

    <v-expand-transition>
      <v-sheet v-if="model != null" class="white--text" color="grey darken-3" height="200" tile>
        <v-row class="d-flex flex-column align-center">
          <h3 class="title py-2">{{x.title}}</h3>
          <p>{{x.text}}</p>
          <div class="d-flex">
         <v-btn  icon rounded class="mx-4 pa-6 black white--text"><a target="blank" :href="x.live"><v-icon id="i" size="34">mdi-movie-open-outline</v-icon></a></v-btn> 
         <v-btn  icon rounded class="mx-4 pa-6 black white--text"><a target="blank" :href="x.git"><v-icon id="i" size="34">mdi-github</v-icon></a></v-btn> 

          </div>
          
        </v-row>
      </v-sheet>
    </v-expand-transition>
  </v-sheet>
</template>

<script>
export default {
  name: "Projects",
  data: () => ({
    active: true,
    model: null,
    projects: [
      {
        src: require("../assets/pics/scythThumb.jpg"),
        title: "Scythulator",
        text: `My first project. There is a really cool boardgame called Scythe, but when you finish the game it
                takes a lot of time to count your points
                ,so I made this website to make it really easy!`,
                git:"https://github.com/hide85x/Scythulator",
                live: "https://hide85x.github.io/Scythulator/"
      },
      {
        src: require("../assets/pics/NotenGoThumb.jpg"),
        text: "sameasdasdasdsadday",
        git: "https://github.com/hide85x/Note-nGo", 
        live: "https://intense-shelf-54991.herokuapp.com/users/register"
      },
      {
        src: "https://hide85x.github.io/aboutMeLipiec/pics/kako.jpg",
        text: "same shit duifferent day",
             git: "https://github.com/hide85x/KaKo" , 
        live: "https://hide85x.github.io/KaKo/?fbclid=IwAR1YsQn00GKRIQ7rLUE-JPvpi08bPd09pniiC-F9FbL3bDv4WAEWWU5oX4s"
      },
      {
        src: require("../assets/pics/spacer L.jpg"),
        text: "DUPA",
             git: "https://github.com/hide85x/spacer", 
        live: "https://vibrant-hugle-b2c0c8.netlify.app/"
      },
      {
        src: require("../assets/pics/badumThumb.jpg"),
        text: "Chuj",
             git: "https://github.com/hide85x/BaDumTss" , 
        live: "https://hide85x.github.io/BaDumTss/"
      },
    ],
  }),
  computed: {
    x() {
      console.log(this.model);
      if (this.model == 0) {
        return (this.modal = this.projects[0]);
      }
      if (this.model == 1) {
        return (this.modal = this.projects[1]);
      }
      if (this.model == 2) {
        return (this.modal = this.projects[2]);
      }
      if (this.model == 3) {
        return (this.modal = this.projects[3]);
      }
      if (this.model == 4) {
        return (this.modal = this.projects[4]);
      }
    },
  },
};
</script>

<style lang="scss" scoped>

@media (max-width: 600px) {
  #card {
    width: 300px !important;
  }
  #carousel {
    width: 100%;
  }
}
#i {
  color:white;
  &:hover{
  color: rgb(255, 0, 128) !important;
}
}
</style>