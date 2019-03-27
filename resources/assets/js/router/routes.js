export default ({ authGuard, guestGuard }) => [
  // { path: '/', name: 'welcome', component: require('~/pages/welcome.vue') },

  // Authenticated routes.
  ...authGuard([
    // Dashboard
    { path: '/', name: 'Dashboard', meta: { breadcrumb: true }, component: require('~/pages/Dashboard.vue') },
    // Product
    { path: '/catalog/product', 
      name: 'catalog/product', 
      meta: { breadcrumb: true }, 
      redirect: '/catalog/product',
      component: {
        render (c) { return c('router-view') }
      },
      children: [
        {
          path: '',
          meta: { breadcrumb: true },
          name: 'Product',
          component: require('~/components/catalog/product/ProductIndex.vue')
        },
        { path: 'form', name: 'ProductForm', component: require('~/components/catalog/product/ProductForm.vue') },
        { path: ':id', name: 'ProductEdit', component: require('~/components/catalog/product/ProductForm.vue'), props:true }
      ]
    },
    // Store Configuration
    { path: '/system/store_configuration', 
      name: 'system/store_configuration', 
      meta: { breadcrumb: true }, 
      redirect: '/system/store_configuration',
      component: {
        render (c) { return c('router-view') }
      },
      children: [
        {
          path: '',
          meta: { breadcrumb: true },
          name: 'Store Configuration',
          component: require('~/components/system/storeConfiguration/StoreConfigurationIndex.vue')
        },
        { path: 'form', name: 'StoreConfigurationForm', component: require('~/components/system/storeConfiguration/StoreConfigurationForm.vue') },
        { path: ':id', name: 'StoreConfigurationEdit', component: require('~/components/system/storeConfiguration/StoreConfigurationForm.vue'), props:true }
      ]
    },
    
    // // Shipping
    // { path: '/shipping/carrier', 
    //   name: 'shipping/carrier', 
    //   meta: { breadcrumb: true }, 
    //   redirect: '/shipping/carrier',
    //   component: {
    //     render (c) { return c('router-view') }
    //   },
    //   children: [
    //     {
    //       path: '',
    //       meta: { breadcrumb: true },
    //       name: 'Carriers',
    //       component: require('~/components/shipping/carrier/CarrierIndex.vue')
    //     },
    //     { path: 'form', name: 'CarrierForm', component: require('~/components/shipping/carrier/CarrierForm.vue') },
    //     { path: ':id', name: 'CarrierEdit', component: require('~/components/shipping/carrier/CarrierForm.vue'), props:true }
    //   ]
    // },
    // **** Profile ****
    { path: '/profile', 
      name: 'Profile', 
      meta: { breadcrumb: true }, 
      component: require('~/components/catalog/profile/Profile.vue')
    },

    // Sale Order
    { path: '/sale_order/order', 
      name: 'sale_order/order', 
      meta: { breadcrumb: true }, 
      redirect: '/sale_order/order',
      component: {
        render (c) { return c('router-view') }
      },
      children: [
        {
          path: '',
          meta: { breadcrumb: true },
          name: 'Sale Orders',
          component: require('~/components/saleOrder/OrderIndex.vue')
        },
        { path: 'form', name: 'SaleOrderForm', component: require('~/components/saleOrder/OrderForm.vue') },
        { path: ':id', name: 'SaleOrderEdit', component: require('~/components/saleOrder/OrderForm.vue'), props:true }
      ]
    },

  ]),

  // Guest routes.
  ...guestGuard([
    { path: '/login', name: 'login', component: require('~/pages/auth/login.vue') },
    { path: '/register', name: 'register', component: require('~/pages/auth/register.vue') },
    { path: '/password/reset', name: 'password.request', component: require('~/pages/auth/password/email.vue') },
    { path: '/password/reset/:token', name: 'password.reset', component: require('~/pages/auth/password/reset.vue') }
  ]),
  {
    path: '*',
    meta: {
      public: true,
    },
    component: require('~/pages/errors/404.vue')
  }
  // { path: '*', component: require('~/pages/errors/404.vue') }
]
