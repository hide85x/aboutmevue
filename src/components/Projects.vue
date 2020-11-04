<template >
  <v-sheet id="projects" class="mx-auto white--text" dark elevation="8" width="100%">
    <v-card-title class="justify-center text-center" primary-title>let's talk about what I do</v-card-title>
    <v-card-text id="content" class="overline pa-6 text-center">
      For over a year now, through various crash courses, books, youtube lectures, IT meetings and
      my own ways around the code, I'm trying to learn the best practices for software development,
      after this time I'm starting to have more clear vision about what I want to learn, what tools
      and technologies would be most useful for me and what I would like to do with that knowledge
      in the future projects. I'm constantly learning web technologies(html, css, java script, jquery,
      vue, materialize, bootstrap), but with the use of NodeJs, express, template engines and MongoDB
      data bases I discovered a lot more can be done with use of java script! I'm also keenly interested
      in the Internet Of Things world, and with my RaspberryPi I'm trying to connect my JS with the outside world ;)
    </v-card-text>
    <v-slide-group id="carousel" 
    v-model="model"
    center-active
      show-arrows
    class="pa-4">
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
      <v-sheet id="slideContent" v-if="model != null" class="align-center" color="grey darken-4" height="300" tile>
        <v-row class="d-flex flex-column align-center pa-1 text-center">
          <v-card-title primary-title class="my-0 py-0">
            {{activeSlide.title}}
          </v-card-title>
          <v-card-text id="content" class="overline px-6 text-caption">{{activeSlide.text}}</v-card-text>
          <div class="d-inline-flex align-items-end">
            live
            <v-btn icon rounded class="mx-2 pa-6 black white--text">
              <a target="blank" :href="activeSlide.live">
                <v-icon id="i" size="34">mdi-movie-open-outline</v-icon>
              </a>
            </v-btn>
            code
            <v-btn icon rounded class="mx-2 pa-6 black white--text">
              
              <a target="blank" :href="activeSlide.git">
                <v-icon id="i" size="34">mdi-github</v-icon>
              </a>
            </v-btn>
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
        src: require("../assets/pics/Screenshot_3.png"),
        title: "Rick And Morty Search App",
        text:"Web app made with vue and rick and morty Rest API",
        git: "https://github.com/hide85x/RickAndMortySearch",
        live: "https://fervent-feynman-abe57c.netlify.app/",
      },
      {
        src: require("../assets/pics/NotenGoThumb.jpg"),
        title: "NoteN'Go",
        text: `This webapp is using MongoDb database and node js environment to create, register and login user, manage and destroy your every day notes.`,
        git: "https://github.com/hide85x/Note-nGo",
        live: "https://intense-shelf-54991.herokuapp.com/users/register",
      },
      {
        src: "https://hide85x.github.io/aboutMeLipiec/pics/kako.jpg",
        title:"KaKo",
        text:
          "Just a simple webpage I made for my friend english clasess, actually this is my first project written for somebody",
        git: "https://github.com/hide85x/KaKo",
        live:
          "https://hide85x.github.io/KaKo/?fbclid=IwAR1YsQn00GKRIQ7rLUE-JPvpi08bPd09pniiC-F9FbL3bDv4WAEWWU5oX4s",
      },
            {
              src: require("../assets/pics/shopmongo.jpg"),
              title: "Shop",
              text: `online shop that uses; node, express, mongoose and some npm third party packgages!`,
              git: "https://github.com/hide85x/NodeMongoShopApp",
              live: "https://node-mongo-shop-app.herokuapp.com/",
            },
      {
        src: require("../assets/pics/spacer L.jpg"),
        title:"Spacer",
        text:
          "Web app made with use of VueJs and NASA API to look for and show cool space related stuff!",
        git: "https://github.com/hide85x/spacer",
        live: "https://vibrant-hugle-b2c0c8.netlify.app/",
      },
      {
        src: require("../assets/pics/badumThumb.jpg"),
        title: "BaDumTsss",
        text:"For all the musicians out there! This website gives you oportunity to lay down some fat beats! ",
        git: "https://github.com/hide85x/BaDumTss",
        live: "https://hide85x.github.io/BaDumTss/",
      },
     
      {
        src: require("../assets/pics/scythThumb.jpg"),
        title: "Scythulator",
        text: `My first project. There is a really cool boardgame called Scythe, but when you finish the game it
                takes a lot of time to count your points
                ,so I made this website to make it really easy!`,
        git: "https://github.com/hide85x/Scythulator",
        live: "https://hide85x.github.io/Scythulator/",
      },
      {
        src: require("../assets/pics/speech-thumb_large.jpg"),
        title: "SpeechSynth",
        text: `Speech synthesator made with jquery and javascript.`,
        git: "https://hide85x.github.io/SpeechSynth/",
        live: "https://hide85x.github.io/SpeechSynth/",
      },
    ],
  }),
  computed: {
    activeSlide() {
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
      if (this.model == 5) {
        return (this.modal = this.projects[5]);
      }
      if (this.model == 6) {
        return (this.modal = this.projects[6]);
      }
      if (this.model == 7) {
        return (this.modal = this.projects[7]);
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
  #slideContent{
    height:200px !important
  }
  #carousel {
    width: 100%;
  }
}
#i {
  color: white;
  &:hover {
    color: rgb(255, 0, 128) !important;
  }
}
</style>