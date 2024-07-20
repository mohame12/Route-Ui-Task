import 'package:flutter/material.dart';

import 'home_view.dart';

class Nav extends StatefulWidget {
   Nav({super.key});
   static const String id='nav';

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  List<Widget> nav=[
    AudioApp(),
    Text('data'),
    Text('Hello'),
  ];

  int indx=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color(0xffFFFFFF),
      elevation: 0,
      currentIndex:indx ,
      onTap: (index)
      {
        indx=index;
        setState(() {

        });
      },
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
      BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',),
      BottomNavigationBarItem(icon: Icon(Icons.library_books),label: 'Library',),
    ],

    ),
      body: nav[indx],

    );
  }
}
