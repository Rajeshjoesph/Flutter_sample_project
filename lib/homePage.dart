import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'navbar.dart';
import 'widget/side_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        SideBar(),
        Expanded(
          child: TopBar(),
        )
      ]),
    );
  }
}
