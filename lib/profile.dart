import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                radius: 84,
              
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 60, color: Colors.blueAccent),
              ),
              SizedBox(height: 16.0),
              Text(
                'User Name',
                style: TextStyle(color: Color.fromARGB(255, 16, 16, 16), fontSize: 24),
              ),
              SizedBox(height: 8.0),
              Text(
                'user@example.com',
                style: TextStyle(color: const Color.fromARGB(179, 17, 17, 17), fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
