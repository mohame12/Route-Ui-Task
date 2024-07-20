import 'package:firstqz/colors.dart';
import 'package:flutter/material.dart';

class AudioApp extends StatelessWidget {
   AudioApp({super.key});
  static const String id='HomeViews';
  @override

  List<Widget>tapbarList=[
    Container(
      decoration: BoxDecoration(
        color: Color(0xffF5F5FA),
        borderRadius: BorderRadius.circular(10)
      ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Art',),
        )),
    Container(
      decoration: BoxDecoration(
        color: Color(0xffF5F5FA),
        borderRadius: BorderRadius.circular(10)
      ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('Busbiss',),
        )),
    Container(
        decoration: BoxDecoration(
            color: Color(0xffF5F5FA),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('drama',),
        )),
    Container(
        decoration: BoxDecoration(
            color: Color(0xffF5F5FA),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text('comedy',),
        )),



  ];

  List<Widget>images=[
    Image(image: AssetImage('assets/images/Image Placeholder 400x600.png')),
    Image(image: AssetImage('assets/images/Image Placeholder 2.png')),
    Image(image: AssetImage('assets/images/Image Placeholder 400x600.png')),
    Image(image: AssetImage('assets/images/Image Placeholder 2.png')),
    Image(image: AssetImage('assets/images/Image Placeholder 400x600.png')),
    Image(image: AssetImage('assets/images/Image Placeholder 2.png')),
  ];

  Widget build(BuildContext context) {

    return DefaultTabController(
      length: tapbarList.length,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body:Padding(
          padding: const EdgeInsetsDirectional.only(top: 100,start: 25,end: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(children: [
                  Image(image: AssetImage('assets/images/Logo.png')),
                  Spacer(flex: 1,),
                  Image(image: AssetImage('assets/images/Setting.png'))
                ],),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Text('Categories',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
                    Spacer(flex: 1,),
                    Text('See more',style: TextStyle(fontFamily: 'Poppins',fontSize: 14,color: defColor),)
            
                  ],
                ),
            
                SizedBox(height: 20,),
                TabBar(
                  labelPadding: EdgeInsetsDirectional.all(1),
                  tabs: tapbarList ,
                indicator: BoxDecoration(),
                dividerHeight: 0,
                dividerColor: Colors.white,),
            
                SizedBox(height: 32,),
                Row(children: [
                  Text('Recommended For You',style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            
                  )),
                  Spacer(flex: 1,),
                  Text('See more',style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: defColor
                  )),
            
                ],),
            
                SizedBox(height: 16,),
            
                SizedBox(
                  height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: images[index],
                      ),)),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Text('Best Seller',style: TextStyle(fontFamily: 'Poppins',fontSize: 16),),
                    Spacer(flex: 1,),
                    Text('See more',style: TextStyle(fontFamily: 'Poppins',fontSize: 14,color: defColor),)
            
                  ],
                ),
            
                SizedBox(height: 10,),

                SizedBox(
                  height:200 ,
                  width:double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) =>
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
                          ),),
                )
            
            
              ],


            ),
          ),
        ) ,
      ),
    );
  }
}
