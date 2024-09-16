import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    // Create an instance of ContactDetail
    final contactDetail = ContactDetail(
      name: 'Vikas Gupta',
      phone: '9889347864',
      email: 'vikaskumargupta765@gmail.com',
      address: 'Rajkiya Engineering College ,Azamgarh,276201',
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contactDetail.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Phone: ${contactDetail.phone}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: ${contactDetail.email}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Address: ${contactDetail.address}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

// ContactDetail model class to store the contact details
class ContactDetail {
  final String name;
  final String phone;
  final String email;
  final String address;

  ContactDetail({
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
  });
}
