import 'package:flutter/material.dart';

class TopProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFF1A1C23), // Background color
        // borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                color: Color(0xFF2A2B37),
                borderRadius: BorderRadius.circular(8.0),
              ),
              width: 850,
              // height: 70,

              padding: EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top Product",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 800,
                    child: DataTable(
                      columns: [
                        DataColumn(
                            label: Text(
                          '#',
                          style: TextStyle(color: Colors.grey.shade500),
                        )),
                        DataColumn(
                            label: Text(
                          'Name',
                          style: TextStyle(color: Colors.grey.shade500),
                        )),
                        DataColumn(
                            label: Text(
                          'Popularity',
                          style: TextStyle(color: Colors.grey.shade500),
                        )),
                        DataColumn(
                            label: Text(
                          'Sales',
                          style: TextStyle(color: Colors.grey.shade500),
                        )),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Text(
                            '01',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                          DataCell(Text('Alice',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10))),
                          DataCell(LinearProgressIndicator(
                            value: 0.5, // Progress between 0.0 to 1.0
                            backgroundColor: Color(0xFF424242),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFFF1AA27)),
                          )),
                          DataCell(Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Color(0xFFF1AA27)
                                  .withOpacity(0.2), // Background color
                              border: Border.all(
                                color: Colors.red, // Highlight border color
                                width: 2, // Border thickness
                              ),
                              borderRadius:
                                  BorderRadius.circular(8), // Rounded corners
                            ),
                            child: Text(
                              'Developer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            '02',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                          DataCell(Text('Alice',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10))),
                          DataCell(LinearProgressIndicator(
                            value: 0.5, // Progress between 0.0 to 1.0
                            backgroundColor: Color(0xFF424242),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFFE2C2C0)),
                          )),
                          DataCell(Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Color(0xFFE2C2C0)
                                  .withOpacity(0.2), // Background color
                              border: Border.all(
                                color:
                                    Color(0xFFE2C2C0), // Highlight border color
                                width: 2, // Border thickness
                              ),
                              borderRadius:
                                  BorderRadius.circular(8), // Rounded corners
                            ),
                            child: Text(
                              '46%',
                              style: TextStyle(
                                color: Color(0xFFE2C2C0),
                                fontSize: 13,
                              ),
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            '03',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                          DataCell(Text('Alice',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10))),
                          DataCell(LinearProgressIndicator(
                            value: 0.5, // Progress between 0.0 to 1.0
                            backgroundColor: Color(0xFF424242),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFFF1AA27)),
                          )),
                          DataCell(Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red
                                  .withOpacity(0.2), // Background color
                              border: Border.all(
                                color: Colors.red, // Highlight border color
                                width: 2, // Border thickness
                              ),
                              borderRadius:
                                  BorderRadius.circular(8), // Rounded corners
                            ),
                            child: Text(
                              'Developer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )),
                        ]),
                        DataRow(cells: [
                          DataCell(Text(
                            '01',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          )),
                          DataCell(Text('Alice',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10))),
                          DataCell(LinearProgressIndicator(
                            value: 0.5, // Progress between 0.0 to 1.0
                            backgroundColor: Color(0xFF424242),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xFF2196F3)),
                          )),
                          DataCell(Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: Colors.red
                                  .withOpacity(0.2), // Background color
                              border: Border.all(
                                color: Colors.red, // Highlight border color
                                width: 2, // Border thickness
                              ),
                              borderRadius:
                                  BorderRadius.circular(8), // Rounded corners
                            ),
                            child: Text(
                              'Developer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )),
                        ]),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
