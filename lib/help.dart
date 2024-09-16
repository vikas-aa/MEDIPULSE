import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome to the Help Section!\n\n'
                'Getting Started:\n\n'
                'Introduction: Welcome to [App Name], your personal health assistant. Our app helps you track your health metrics and provides valuable insights to improve your well-being.\n\n'
                'Installation: Download the app from [App Store/Google Play Store], install it, and open it to get started.\n\n'
                'Account Setup: Create an account by entering your email address and setting a password. You can also sign in using your existing social media accounts.\n\n'
                'Navigation:\n\n'
                'Main Features: The app includes features like health tracking, workout plans, and diet recommendations. You can access these from the main menu.\n\n'
                'Menu Overview: Use the bottom navigation bar to switch between the home screen, health metrics, workout plans, and settings.\n\n'
                'Using the App:\n\n'
                'How to Track Your Steps: Go to the “Health Metrics” section and tap “Steps” to log your daily step count.\n\n'
                'How to Log a Workout: Tap on “Workout Plans” and select your preferred exercise. Enter the details and save your workout.\n\n'
                'Managing Your Profile:\n\n'
                'Edit Profile: Go to “Settings” and tap on “Profile” to update your personal information.\n\n'
                'Privacy Settings: Adjust your privacy settings in the “Settings” menu under “Privacy.”\n\n'
                'Troubleshooting:\n\n'
                'Common Issues: If you encounter problems, check our FAQ section or restart the app.\n\n'
                'App Crashes/Freezing: Restart your device if the app crashes. Ensure you have the latest version of the app installed.\n\n'
                'Contact Us:\n\n'
                'Customer Support: Email us at [support@example.com] or call [123-456-7890].\n\n'
                'Feedback: Share your thoughts and suggestions with us at [feedback@example.com].\n\n'
                'Legal and Compliance:\n\n'
                'Terms of Service\n'
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
