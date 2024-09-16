import 'package:flutter/material.dart';

import 'package:health_final/mylogin.dart';

import 'package:health_final/phone.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/health_bank_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const Text(
              'Health Bank',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 39,
              ),
            ),
            const Text(
              'Wellness begins with us',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const   MyPhone(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 232, 231, 237),
                    disabledBackgroundColor: Colors.white10,
                    foregroundColor: const Color.fromARGB(255, 12, 13, 18),
                    minimumSize: const Size(250, 50),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLogIn(),
                              ),
                              );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 232, 231, 237),
                    disabledBackgroundColor: Colors.white10,
                    foregroundColor: const Color.fromARGB(255, 12, 13, 18),
                    minimumSize: const Size(250, 50),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
