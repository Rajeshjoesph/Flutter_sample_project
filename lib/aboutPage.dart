import 'package:flutter/material.dart';
import 'navbar.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(context),
      body: Center(child: Text('This is the About Page')),
    );
  }
}
