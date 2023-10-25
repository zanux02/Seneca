

class MenuItem{
  final String title;
  final String link;


  const MenuItem({
    required this.title,
    required this.link,
});

}

const appMenuItems = <MenuItem>[

MenuItem(
  title: 'Login',
  link: '/login',
),

MenuItem(
  title: 'Home',
  link: '/home',
),
 
];