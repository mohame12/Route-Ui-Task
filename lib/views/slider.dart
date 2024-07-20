import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class Sld extends StatefulWidget {
   Sld({super.key});
   static const String id='Silder';

  @override
  State<Sld> createState() => _SldState();
}

class _SldState extends State<Sld> {
  List<Widget>slider=[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 315,
        decoration: BoxDecoration(
            color: Color(0xffF5F5FA),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(image: AssetImage('assets/images/Image Placeholder 240x240.png'),height: 200,width:120 ,fit: BoxFit.cover,)),
              SizedBox(width: 10,),
              Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Light Mage',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
                  SizedBox(height: 10,),
                  Text('Laruri forst',style: TextStyle(fontFamily: 'Poppins',fontSize: 12),),
                ],
              )
            ],
          ),
        ),
        // child: ListTile(
        //   leading: Image(image: AssetImage('assets/images/Image Placeholder 240x240.png'),height: 200,width:120 ,fit: BoxFit.cover,),
        //   title:Text('Light Mage',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
        //   subtitle:Text('Laruri forst',style: TextStyle(fontFamily: 'Poppins',fontSize: 10),),
        //
        // ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 315,
        decoration: BoxDecoration(
            color: Color(0xffF5F5FA),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(image: AssetImage('assets/images/Image Placeholder 240x240.png'),height: 200,width:120 ,fit: BoxFit.cover,)),
              SizedBox(width: 10,),
              Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Light Mage',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
                  SizedBox(height: 10,),
                  Text('Laruri forst',style: TextStyle(fontFamily: 'Poppins',fontSize: 12),),
                ],
              )
            ],
          ),
        ),
        // child: ListTile(
        //   leading: Image(image: AssetImage('assets/images/Image Placeholder 240x240.png'),height: 200,width:120 ,fit: BoxFit.cover,),
        //   title:Text('Light Mage',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
        //   subtitle:Text('Laruri forst',style: TextStyle(fontFamily: 'Poppins',fontSize: 10),),
        //
        // ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 315,
        decoration: BoxDecoration(
            color: Color(0xffF5F5FA),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(image: AssetImage('assets/images/Image Placeholder 240x240.png'),height: 200,width:120 ,fit: BoxFit.cover,)),
              SizedBox(width: 10,),
              Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Light Mage',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
                  SizedBox(height: 10,),
                  Text('Laruri forst',style: TextStyle(fontFamily: 'Poppins',fontSize: 12),),
                ],
              )
            ],
          ),
        ),
        // child: ListTile(
        //   leading: Image(image: AssetImage('assets/images/Image Placeholder 240x240.png'),height: 200,width:120 ,fit: BoxFit.cover,),
        //   title:Text('Light Mage',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
        //   subtitle:Text('Laruri forst',style: TextStyle(fontFamily: 'Poppins',fontSize: 10),),
        //
        // ),
      ),
    )
  ];

  int ind=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CarouselSlider(items: slider, options:CarouselOptions(
            enlargeCenterPage:true,
            autoPlay: true,
            onPageChanged: (index, reason){
              ind=index;
              setState(() {

              });
            },
          ) ),
          DotsIndicator(
            dotsCount: slider.length,
            position: ind,
            decorator: DotsDecorator(
              spacing: EdgeInsets.all(10),
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          )
        ],
      ),
    );
  }
}
