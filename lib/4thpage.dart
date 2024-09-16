import 'package:flutter/material.dart';
import 'package:health_final/2ndpage.dart';
import 'package:health_final/3rdpage.dart';
import 'package:health_final/Contact.dart';
import 'package:health_final/aboutus.dart';
import 'package:health_final/healthissues.dart';
import 'package:health_final/help.dart';
import 'package:health_final/main.dart';
import 'package:health_final/privacy.dart';
import 'package:health_final/profile.dart';
import 'package:health_final/sharingacrossplatform.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  
        Scrollbar(
          child: SingleChildScrollView(
        child: Column(
          
          children: <Widget>[
        
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child:
                        Icon(Icons.person, size: 40, color: Colors.blueAccent),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'user name',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(
                        'user@example.com',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),

            

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Settings',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12.0),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                    onTap: () {
                   Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const SecondPage(), // Change to appropriate page
              ),
            );
                    },
                  ),
               
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Language'),
                    onTap: () {
                      
                    },
                  ),
                
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Accounts Center',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12.0),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Profiles'),
                    onTap: () {
                     Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Profile(), // Change to appropriate page
              ),
            );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text('Sharing Across Profile'),
                    onTap: () {
                      Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const SharingAcross(), // Change to appropriate page
              ),
            );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text('Personal details'),
                    onTap: () {
                      
                    },
                    
                  ),
                       ListTile(
                    leading: Icon(Icons.password),
                    title: Text('Password Change'),
                    onTap: () {
                      
                    },
                       ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Help and Support',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12.0),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help'),
                    onTap: () {
                      Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Help(), // Change to appropriate page
              ),
            );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip_outlined),
                    title: Text('Privacy center'),
                    onTap: () {
                    Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Privacy(), // Change to appropriate page
              ),
            );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text('Contact Us'),
                    onTap: () {
                   Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Contact(), // Change to appropriate page
              ),
            );
                    },
                  ),
                   ListTile(
                    leading: Icon(Icons.info),
                    title: Text('ABOUT US'),
                    onTap: () {
                   Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const AboutUs(), // Change to appropriate page
              ),
            );
                    },
                  ),
          
                ],
              ),
            ),
            SizedBox(height: 16.0),

          
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                  Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const MyApp(), // Change to appropriate page
              ),
            );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                   Colors.grey[200],
                    foregroundColor: const Color.fromARGB(255, 18, 14, 14), 
                  ),
                  child: const Text(
                    'LOG OUT',
                    style: TextStyle(),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
