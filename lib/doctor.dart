import 'package:flutter/material.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildContainerWithText('assets/images/image1.jpg', Colors.blue, 'Image 1'),
                    _buildContainerWithText('assets/images/image2.jpg', Colors.green, 'Image 2'),
                  ],
                ),
                const SizedBox(height: 20),
                // Second Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildContainerWithText('assets/images/image3.jpg', Colors.orange, 'Image 3'),
                    _buildContainerWithText('assets/images/image4.jpg', Colors.purple, 'Image 4'),
                  ],
                ),
                const SizedBox(height: 20),
                // Third Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildContainerWithText('assets/images/image5.jpg', Colors.pink, 'Image 5'),
                    _buildContainerWithText('assets/images/image6.jpg', Colors.yellow, 'Image 6'),
                  ],
                ),
                const SizedBox(height: 20),
                // Fourth Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildContainerWithText('assets/images/image7.jpg', Colors.cyan, 'Image 7'),
                    _buildContainerWithText('assets/images/image8.jpg', Colors.red, 'Image 8'),
                  ],
                ),
                const SizedBox(height: 20),
                // Fifth Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildContainerWithText('assets/images/image9.jpg', Colors.teal, 'DR.vikas Gupta'),
                    _buildContainerWithText('assets/images/image10.jpg', Colors.brown, 'Image 10'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to create a container with text below
  Widget _buildContainerWithText(String imagePath, Color backgroundColor, String text) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8), // Spacing between the container and the text
        Text(
          text,
          style: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ],
    );
  }
}
