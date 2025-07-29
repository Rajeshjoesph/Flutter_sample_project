import 'package:flutter/material.dart';
import 'navbar.dart';
import 'widget/side_bar.dart';
import 'widget/today_sales.dart';
import 'widget/top_products.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          SideBar(),

          // Main content area
          Expanded(
            child: Column(
              children: [
                // TopBar at the top
                SizedBox(
                  height: 60,
                  child: TopBar(),
                ),

                // Today's Sales or main content
                Expanded(
                  child: TodaySales(),
                ),
                Expanded(child: TopProducts())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
