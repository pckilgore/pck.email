<template>
  <v-app>
    <v-toolbar fixed app dark flat>
      <v-spacer></v-spacer>
      <v-btn
        right
        light
      >
        <!-- Trigger Modal contact stuff -->
        POST :://
      </v-btn>
      <v-btn
        right
        light
        @click.stop="rightDrawer = !rightDrawer"
      >
        GET :://
      </v-btn>
    </v-toolbar>
    <v-content>
      <v-container>
        <nuxt />
      </v-container>
    </v-content>
    <v-navigation-drawer
      temporary
      right
      v-model="rightDrawer"
      fixed
      color="black"
    >
      <v-list>
        <v-list-tile v-for="page in pages" :key="page.id">
          <v-list-tile-title>{{page.name}}</v-list-tile-title>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>
    <v-footer :fixed="fixed" app>
      <div class="pl-3">PATCH :// this page @ <a href="http://github.com/pckilgore/pck.email">github</a> </div>
      <v-spacer></v-spacer>
      <span>&copy; 2017 Patrick C. Kilgore</span>
    </v-footer>
  </v-app>
</template>

<script>
  export default {
    data () {
      return {
        drawer: true,
        fixed: false,
        pages: [{id:1, name:"Resume"}],
        items: [
          { icon: 'apps', title: 'Welcome', to: '/' },
          { icon: 'bubble_chart', title: 'Inspire', to: '/inspire' }
        ],
        miniVariant: false,
        right: true,
        rightDrawer: false,
        title: 'Vuetify.js'
      }
    }
  }
</script>
