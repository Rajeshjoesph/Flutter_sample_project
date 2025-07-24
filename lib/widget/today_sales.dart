import 'package:flutter/material.dart';

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
            children: [
              Container(
                  width: 800,
                  height: 400,
                  padding: EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF2A2B37), // Card background color
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
            ],
          ),

          SizedBox(height: 16),
          // Placeholder for sales data
          Expanded(
            child: Row(children: [
              Text('Total Sales: \$5000', style: TextStyle(fontSize: 18)),
              Text('Number of Transactions: 150',
                  style: TextStyle(fontSize: 18)),
            ]),
          ),
        ],
      ),
    );
  }
}
