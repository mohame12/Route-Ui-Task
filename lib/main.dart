import 'package:firstqz/views/Moody.dart';
import 'package:firstqz/views/home_view.dart';
import 'package:firstqz/views/nav.dart';
import 'package:firstqz/views/slider.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'Poppins'
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Moody.id,
      routes: {
        AudioApp.id:(context)=>AudioApp(),
        Nav.id:(context)=>Nav(),
        Moody.id:(context)=>Moody(),
        Sld.id:(context)=>Sld(),
      },
    );
  }
}
