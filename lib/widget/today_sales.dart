import 'package:flutter/material.dart';

class TodaySales extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF1A1C23), // Background color
        // borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            'Today\'s Sales',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
