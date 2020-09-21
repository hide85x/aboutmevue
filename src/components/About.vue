<template>
  <v-card id="about" dark rounded="0" class="justify-center d-flex flex-row " >
    
    <v-img src="../assets/pics/me.jpg" 
  cover
    width=25% 
    ></v-img>


    <div>

    <v-card-title  class=" py-8 justify-center" primary-title><h2>Something about me...</h2></v-card-title>
    <v-divider></v-divider>
    <v-card-text id="content" class="overline white--text  text-center ">
    
      My name is Łukasz. I'm easy going, friendly type, with passion for art, nature and science. For last ten years I was working
      in the tech crew in the Contemporary Theater of Wroclaw, my job was to build sets for the plays and work during performances, but I was also a sound engineer. I also create sounds myself, I write, play and sing in my band called UnAssigned. I'm very curious about the World and I'm trying to know as many aspects of its as I can, that's why I found astronomy, philosophy and science in general, great ways to understand more, but of course not everything can be read out of the book. Thats why I travel and meet people. During my work for the theater I managed to visit, and live in the places
      around the world, I've spent some time in Japan, Chile, Iceland, Thailand and western Europe. So that's a lil'bit about me.
    </v-card-text>
    </div>
  </v-card>
</template>

<script>
export default {
  name: "About",
};
</script>

<style lang="scss" >
#content {
  font-weight: 100;
}
@media (min-width: 1000px){
#content {
  padding: 50px 200px !important;
  font-size: 16px !important;
  font-weight: 300;
  line-height: 36px;
  text-align: center;
  
}
  
}
@media (max-width: 600px) {
#about {
  flex-wrap: wrap;
  text-align: center;
  // margin: 200px auto;
  // padding: 20px 200px;
  // display: flex;
  
  // justify-content: center;
}
  
}
</style>