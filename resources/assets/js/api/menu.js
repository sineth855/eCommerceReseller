const Menu =  [
  { header: 'Apps' },
  {
    title: 'Dashboard',
    group: 'apps',
    icon: 'dashboard',
    name: 'Dashboard',
  },
  {
    title: 'Product',
    group: 'apps',
    icon: 'chat_bubble',
    target: '_blank',
    name: 'Chat',
    items: [
      { name: 'Product', title: 'Manage Product', component: 'Product' },
      { name: 'AddProduct', title: 'Add Product', component: 'ProductForm' },
    ]
  },
  {
    title: 'Orders',
    group: 'apps',
    name: 'Media',
    icon: 'shopping_cart',
    items: [
      { name: 'Manage Orders', title: 'Manager Orders', component: 'Sale Orders' },
    ]
  },
  {
    title: 'Systems',
    group: 'extra',
    icon: 'settings',
    items: [
      { name: 'Store Configuration', title: 'Store Configuration', component: 'Store Configuration' },
      { name: 'Profile', title: 'Account Profile', component: 'Profile' }
    ]
  },
];
// reorder menu
Menu.forEach((item) => {
  if (item.items) {
    item.items.sort((x, y) => {
      let textA = x.title.toUpperCase();
      let textB = y.title.toUpperCase();
      return (textA < textB) ? -1 : (textA > textB) ? 1 : 0;
    });
  }
});

export default Menu;
