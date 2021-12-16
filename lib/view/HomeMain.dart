import 'package:doppy/view/home.dart';
import 'package:doppy/view/widgets/homescreendrawer.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          HomeScreenDrawer(),
          HomePage()

        ],
      ),
    );
  }
}
