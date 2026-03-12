/**
 * Entry point — northops.ca
 */
import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import DefaultLayout from './layouts/DefaultLayout.vue'
import ServiceDetailLayout from './layouts/ServiceDetailLayout.vue'
import UtilityLayout from './layouts/UtilityLayout.vue'

const app = createApp(App)
app.use(router)
app.component('DefaultLayout', DefaultLayout)
app.component('ServiceDetailLayout', ServiceDetailLayout)
app.component('UtilityLayout', UtilityLayout)
app.mount('#app')
