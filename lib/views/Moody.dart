import 'package:firstqz/views/slider.dart';
import 'package:flutter/material.dart';

import 'home_view.dart';

class Moody extends StatefulWidget {
   Moody({super.key});
  static const String id='mody';

  int ind=0;
  @override
  State<Moody> createState() => _MoodyState();
}

List<Widget>newlist=[
  AudioApp(),
  Sld(),
  AudioApp(),
];
class _MoodyState extends State<Moody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (index)
        {
          widget.ind=index;
          setState(() {

          });
        },
        currentIndex: widget.ind,
        items: [
          BottomNavigationBarItem(icon: Container(child: Column(children: [Icon(Icons.home),CircleAvatar(backgroundColor:widget.ind==0? Colors.green:Colors.transparent,radius: 3,)],),),label: ''),
          BottomNavigationBarItem(icon: Container(child: Column(children: [Icon(Icons.calendar_today_outlined),CircleAvatar(backgroundColor:widget.ind==1? Colors.green:Colors.transparent,radius: 3,)],),),label: ''),
          BottomNavigationBarItem(icon: Container(child: Column(children: [Icon(Icons.person),CircleAvatar(backgroundColor: widget.ind==2? Colors.green:Colors.transparent,radius: 3,)],),),label: ''),
        ],
      ),
          body:newlist[widget.ind] ,
    );
  }
}
