import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'navbar.dart';
import 'widget/side_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildCustomAppBar(context),
        drawer: SideBar(),
        body: Center(
            child: Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20),
                width: 500,
                height: 700,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          // width: ,
                          color: Colors.deepPurple,
                        ),
                        Positioned(
                          top: 45,
                          left: 180,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("assets/profile.jpg"),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Column(
                      children: [
                        Text(
                          "Rajesh kannan",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(color: Colors.black12, blurRadius: 6)
                            ],
                          ),
                          child: Text(
                            'Passionate about mobile app development using Flutter. I love building beautiful and performant UI.',
                            style: TextStyle(fontSize: 14),
                          ),
                        )),
                    SizedBox(height: 20),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(children: [
                          buildStatBox("Project", "24"),
                          buildStatBox("Followers", "1.2k"),
                          buildStatBox("Following", "300"),
                        ]))
                  ],
                ))));
  }

  Widget buildStatBox(String label, String count) {
    return Expanded(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Text(count,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(
                  label,
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            )));
  }
}
