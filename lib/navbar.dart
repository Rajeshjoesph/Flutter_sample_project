import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF171821),
      title: SizedBox(
          width: 700,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A2B37),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                                color: Color(0xFFD3D3D9), fontSize: 14),
                            border: InputBorder.none,
                            icon: Icon(Icons.search, color: Color(0xFFD3D3D9))),
                      ))),
            ],
          )),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications, color: Color(0xFFD3D3D9)),
          onPressed: () {
            // Handle notifications
          },
        ),
        IconButton(
          icon: Icon(Icons.account_circle, color: Color(0xFFD3D3D9)),
          onPressed: () {
            // Handle user profile
          },
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.expand_more),
            color: Color(0xFFD3D3D9)),
      ],
    );
  }
}
