 import 'package:flutter/material.dart';
 import 'package:get/get.dart';

import 'colors.dart';
 class HomePage extends StatefulWidget {
   @override
   _HomePageState createState() => _HomePageState();
 }

 class _HomePageState extends State<HomePage> {
   double xOffset = 0;
   double yOffset = 0;
   double scaleFactor = 1;

   bool isDrawerOpen = false;
   @override
   Widget build(BuildContext context) {
     return GetMaterialApp(
       home: Scaffold(
         body: AnimatedContainer(
           transform: Matrix4.translationValues(xOffset, yOffset, 0)
             ..scale(scaleFactor)..rotateY(isDrawerOpen? -0.5:0),
           duration: Duration(milliseconds: 250),
           color: PinkBackground,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    //margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        isDrawerOpen?IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: (){
                            setState(() {
                              xOffset=0;
                              yOffset=0;
                              scaleFactor=1;
                              isDrawerOpen=false;

                            });
                          },

                        ): IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen=true;
                              });
                            }),
                      ],

                    ),
                  )
                ],
              ),
            ),
         ),
       ),
     );
   }
 }
