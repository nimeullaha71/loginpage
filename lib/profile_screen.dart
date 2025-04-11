import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String email =
      "user@example.com"; // Example email, you can pass real data here
  final String password = "********"; // Example password

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://picsum.photos/200"),
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
                controller: TextEditingController(text: email),
                readOnly: true,
              ),
              SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                controller: TextEditingController(text: password),
                obscureText: true,
                readOnly: true,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushReplacementNamed(context, '/profile');
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
