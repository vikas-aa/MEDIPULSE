import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            '"We are dedicated to providing reliable and accessible health information to help you live a healthier, happier life."',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20, // Increase the font size for better readability
              color: Colors.black, // Set the text color to black
              fontWeight: FontWeight.bold, // Make the text bold
              fontFamily: 'Roboto', // You can choose any available font
            ),
          ),
        ),
      ),
    );
  }
}
