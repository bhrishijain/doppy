import 'package:doppy/view/HomeMain.dart';
import 'package:doppy/view/colors.dart';
import 'package:doppy/view/home.dart';
import 'package:doppy/view/login.dart';
import 'package:doppy/view/signupwithgoogle.dart';
import 'package:flutter/material.dart';

import 'view/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: PinkBackground,
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

