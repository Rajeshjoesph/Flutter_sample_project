import 'package:flutter/material.dart';
import 'navbar.dart';

class Contactpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildCustomAppBar(context),
      body: Center(child: Text("this is contact page")),
    );
  }
}
