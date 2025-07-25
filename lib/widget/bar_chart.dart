import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2A2B37), // Dark background
      body: Center(
        child: SizedBox(
          height: 200,
          child: BarChart(
            BarChartData(
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              titlesData: FlTitlesData(
                show: false, // No axis labels
              ),
              barGroups: [
                _buildBar(0, 4, 8),
                _buildBar(1, 6, 12),
                _buildBar(2, 3, 10),
                _buildBar(3, 2, 7),
                _buildBar(4, 4, 8),
                _buildBar(5, 3, 6),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Custom two-tone bar
  BarChartGroupData _buildBar(int x, double bottomHeight, double topHeight) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: bottomHeight + topHeight,
          width: 16,
          borderRadius: BorderRadius.circular(0),
          rodStackItems: [
            BarChartRodStackItem(
              0,
              bottomHeight,
              Colors.cyanAccent, // Bottom light color
            ),
            BarChartRodStackItem(
              bottomHeight,
              bottomHeight + topHeight,
              Colors.black.withOpacity(0.6), // Top dark color
            ),
          ],
        ),
      ],
    );
  }
}
