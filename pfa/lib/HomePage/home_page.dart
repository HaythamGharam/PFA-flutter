import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CentreName'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/user-avatar.png'), // Replace with your image asset
                ),
                SizedBox(width: 16),
                Text(
                  'Name',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "Today's Classes",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: const [
                  ClassCard(
                    className: 'C#',
                    classInfo: 'Class: 3.6',
                    time: '9:00 - 11:00',
                  ),
                  ClassCard(
                    className: 'Python',
                    classInfo: 'Class: 3.6',
                    time: '13:00 - 15:00',
                  ),
                  // Add more ClassCard widgets as needed
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Students',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'Calendar',
          ),
        ],
      ),
    );
  }
}

class ClassCard extends StatelessWidget {
  final String className;
  final String classInfo;
  final String time;

  const ClassCard({super.key, required this.className, required this.classInfo, required this.time});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to another page when the card is tapped
        Navigator.pushNamed(
          context,
          '/class-details',
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: const Icon(Icons.class_),
          title: Text(className),
          subtitle: Text('$classInfo\n$time'),
          isThreeLine: true,
          trailing: IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              // Action when info icon is pressed (optional)
            },
          ),
        ),
      ),
    );
  }
}

