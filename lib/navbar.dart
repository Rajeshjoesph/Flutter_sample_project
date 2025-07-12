import 'package:flutter/material.dart';

PreferredSizeWidget buildCustomAppBar(BuildContext context) {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Rajesh",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            NavItem(
              title: "Home",
              routeName: '/',
            ),
            SizedBox(width: 46),
            NavItem(
              title: "About",
              routeName: '/about',
            ),
            SizedBox(width: 36),
            NavItem(
              title: "Content",
              routeName: '/contact',
            )
          ],
        )
      ],
    ),
    centerTitle: true,
    backgroundColor: Colors.teal,
  );
}

class NavItem extends StatelessWidget {
  final String title;
  final String routeName;

  NavItem({required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (ModalRoute.of(context)?.settings.name != routeName) {
            Navigator.pushReplacementNamed(context, routeName);
          }
        },
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ));
  }
}
