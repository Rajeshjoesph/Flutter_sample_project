import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'homePage.dart';
import 'aboutPage.dart';
import 'contactPage.dart';
import 'navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Navigation AppBar',
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "/about": (context) => AboutPage(),
        "/contact": (context) => UserFormPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Profile Card",
//       home: Scaffold(
//         backgroundColor: Colors.grey[200],
//         appBar: 
//         body: 
//       ),
//     );
//   }
// }


