import 'package:flutter/material.dart';
import 'bar_chart.dart';

class TodaySales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 140,
      decoration: BoxDecoration(
        color: Color(0xFF1A1C23), // Background color
        // borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 850,
                  height: 260,
                  padding: EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF2A2B37), // Card background color
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Text(
                              'Today\'s Sales',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Sales Summary',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // padding: EdgeInsets.only(top: 10),
                        children: [
                          Card(
                              color: Color(0xFF1A1C23),
                              child: SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        // padding: EdgeInsets.all(10),
                                        children: [
                                          Icon(Icons.analytics_outlined,
                                              color: Colors.yellow, size: 40),
                                          Text(
                                            '\$ 5K',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            'Total Sales',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            '+10% from yesterday',
                                            style: TextStyle(
                                                color: Colors.yellowAccent,
                                                fontSize: 10),
                                          ),
                                        ]),
                                  ))),
                          Card(
                              color: Color(0xFF1A1C23),
                              child: SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        // padding: EdgeInsets.all(10),
                                        children: [
                                          Icon(Icons.not_accessible_outlined,
                                              color: Colors.yellow, size: 40),
                                          Text(
                                            '\$ 5K',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            'Total Sales',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            '+10% from yesterday',
                                            style: TextStyle(
                                                color: Colors.yellowAccent,
                                                fontSize: 10),
                                          ),
                                        ]),
                                  ))),
                          Card(
                              color: Color(0xFF1A1C23),
                              child: SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        // padding: EdgeInsets.all(10),
                                        children: [
                                          Icon(Icons.analytics_outlined,
                                              color: Colors.yellow, size: 40),
                                          Text(
                                            '\$ 5K',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            'Total Sales',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            '+10% from yesterday',
                                            style: TextStyle(
                                                color: Colors.yellowAccent,
                                                fontSize: 10),
                                          ),
                                        ]),
                                  ))),
                          Card(
                              color: Color(0xFF1A1C23),
                              child: SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        // padding: EdgeInsets.all(10),
                                        children: [
                                          Icon(Icons.analytics_outlined,
                                              color: Colors.yellow, size: 40),
                                          Text(
                                            '\$ 5K',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                          ),
                                          Text(
                                            'Total Sales',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            '+10% from yesterday',
                                            style: TextStyle(
                                                color: Colors.yellowAccent,
                                                fontSize: 10),
                                          ),
                                        ]),
                                  ))),
                        ],
                      ),
                    ],
                  )),
              Container(
                  width: 350,
                  height: 260,
                  decoration: BoxDecoration(
                    color: Color(0xFF2A2B37), // Card background color
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Level',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                  height: 150,
                                  child: Padding(
                                      padding: EdgeInsets.all(15),
                                      child: CustomBarChart())),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.cyanAccent, // Card background color
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  Text(
                                    "Volume",
                                    style: TextStyle(
                                        fontSize: 20, color: Color(0xFF615F5F)),
                                  ),
                                  Text("|",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white)),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF545252), // Card background color
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  Text("Services",
                                      style: TextStyle(
                                          fontSize: 20, color: const Color(0xFF615F5F))),
                                ],
                              )
                            ],
                          ))
                    ],
                  ))
            ],
          ),

          // Placeholder for sales data
        ],
      ),
    );
  }
}
