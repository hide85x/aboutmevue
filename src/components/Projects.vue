<template>
  <v-sheet class="mx-auto white--text"  dark elevation="8" width="100%">
    <v-card-title class="justify-center text-center " primary-title>let's talk about what I do</v-card-title>
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
    <v-img 
        cover   
        height="250px"
       :src="pro.src"
    >
        
    </v-img> 
          <v-row class="" align="end" justify="center">
          <v-scale-transition>
              <v-icon
                v-if="active"
                color="white"
                size="48"
                v-text="'mdi-close-circle-outline'"
              ></v-icon>
            </v-scale-transition>
          </v-row>
        </v-card>
      </v-slide-item>
    </v-slide-group>

    <v-expand-transition>
      <v-sheet v-if="model != null" class="white--text" color="grey darken-3"  height="200" tile>
        <v-row class="fill-height" align="center" justify="center">
          <h3 class="title">Selected {{ model }}</h3> {{x}}
          <p></p>
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
    projects: [{
        name: "0",
        src: require("../assets/pics/scythThumb.jpg"),
        text: "same shit duifferent day"
        
    },{
        name: "1",
        src: require("../assets/pics/NotenGoThumb.jpg"),
        text: "sameasdasdasdsadday"
    },
    {
        name: "2",
        src: "https://hide85x.github.io/aboutMeLipiec/pics/kako.jpg",
        text: "same shit duifferent day"
    },{
        name: "3",
        src:require("../assets/pics/spacer L.jpg") ,
        text: "DUPA"
        
    },{
        name: "4",
        src: require("../assets/pics/badumThumb.jpg"),
        text:"Chuj"
        
    }],
    
    
  }),
  computed: {
      x(){
            console.log(this.model)
            if(this.model==0){
                return this.modal= this.projects[0].text
            }
            if(this.model==1){
                return this.modal= this.projects[1].text
            }
            if(this.model==2){
                return this.modal= this.projects[2].text
            }
            if(this.model==3){
                return this.modal= this.projects[3].text
            }
            if(this.model==4){
                return this.modal= this.projects[4].text
            }
          
        }
    }
};
</script>

<style lang="scss" scoped>
@media (max-width: 600px) {
#card {
    width: 300px !important;
}
#carousel {
    width: 100%;
};
    
}
</style>