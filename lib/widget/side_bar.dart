import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: const Color(0xFF171821),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.teal,
          //   ),
          //   child: Text('Navingation Drawer',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 24,
          //       )),
          // ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(
              "Dashboard",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile",
                style: TextStyle(
                  color: Color(0xFF87888C),
                  fontSize: 18,
                )),
            onTap: () => {
              Navigator.pushReplacementNamed(context, '/about'),
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart_outlined),
            title: Text("Orders",
                style: TextStyle(
                  color: Color(0xFF87888C),
                  fontSize: 18,
                )),
            onTap: () => {
              Navigator.pushReplacementNamed(context, '/contact'),
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag_outlined),
            title: Text(
              "Products",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () => {
              // Add your settings navigation logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.stacked_line_chart_sharp),
            title: Text(
              "Sales Report",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () => {
              // Add your settings navigation logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.message_outlined),
            title: Text(
              "Mesages",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () => {
              // Add your settings navigation logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.settings_outlined),
            title: Text(
              "Settings",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () => {
              // Add your logout logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text(
              "Favorites",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () => {
              // Add your logout logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.history_sharp),
            title: Text(
              "History",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () => {
              // Add your logout logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text(
              "Logout",
              style: TextStyle(
                color: Color(0xFF87888C),
                fontSize: 18,
              ),
            ),
            onTap: () => {
              // Add your logout logic here
            },
          )
        ],
      ),
    ));
  }
}
