import 'package:flutter/material.dart';
import 'navbar.dart';
import 'OtherSources/dummyJson.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: TopBar(),
      body: FutureBuilder<List<dynamic>>(
          future: jsonData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Center(child: Text('No data available'));
            }

            final data = snapshot.data!;
            return GridView.builder(
                padding: EdgeInsets.all(16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Number of cards in a row
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 1, // Adjust height based on content
                ),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 50,
                    height: 50,
                    child: Card(
                      margin: EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: Colors.blue[50],
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  NetworkImage(data[index]['image']),
                            ),
                            Text(
                              'Name: ${data[index]['firstName']} ${data[index]['lastName']}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              'Email: ${data[index]['email']}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Phone: ${data[index]['phone']}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Username: ${data[index]['username']}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Password: ${data[index]['password']}',
                              style: const TextStyle(fontSize: 16),
                            ),
                            Text('role: ${data[index]['role']}',
                                style: const TextStyle(fontSize: 16)),
                            const Spacer(),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        // Handle edit logic here
                                        print(
                                            'Edit user: ${data[index]['username']}');
                                      },
                                      icon: Icon(Icons.edit, size: 18),
                                      label: Text('Edit'),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        backgroundColor: Colors.blue,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        // Handle edit logic here
                                        print(
                                            'Edit user: ${data[index]['username']}');
                                      },
                                      icon: Icon(Icons.remove, size: 18),
                                      label: Text('Edit'),
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        backgroundColor: Colors.blue,
                                      ),
                                    ),
                                  )
                                ])
                          ],
                        ),
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
