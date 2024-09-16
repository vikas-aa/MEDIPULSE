import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Privacy Policy\n'
                'Last Updated: [few hour ago]\n\n'
                '1. Introduction\n'
                'Welcome to [WEALTH]. We are committed to protecting your privacy and ensuring your personal data is handled safely and responsibly. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you use our mobile application.\n\n'
                '2. Information We Collect\n'
                'Personal Information: We may collect personal information that you provide directly, such as:\n'
                '- Name\n'
                '- Email address\n'
                '- Phone number\n'
                '- Health-related information (e.g., medical history, symptoms, etc.)\n\n'
                'Usage Data: We collect data about your interactions with our app, including:\n'
                '- Device information (e.g., model, OS version)\n'
                '- Log data (e.g., IP address, access times)\n'
                '- Activity within the app (e.g., pages viewed, features used)\n\n'
                '3. How We Use Your Information\n'
                'We use the collected information to:\n'
                '- Provide and improve our app’s functionality\n'
                '- Personalize your experience\n'
                '- Communicate with you (e.g., notifications, updates)\n'
                '- Analyze usage patterns and trends\n'
                '- Ensure compliance with our terms and policies\n\n'
                '4. Sharing Your Information\n'
                'We do not share your personal information with third parties except in the following circumstances:\n'
                '- Service Providers: We may share information with third-party service providers who perform services on our behalf (e.g., hosting, analytics). These providers are obligated to protect your data and only use it for the purposes we specify.\n'
                '- Legal Requirements: We may disclose your information if required to do so by law or to respond to legal processes.\n\n'
                '5. Data Security\n'
                'We take reasonable measures to protect your information from unauthorized access, disclosure, or destruction. However, no method of transmission over the Internet or electronic storage is 100% secure, so we cannot guarantee absolute security.\n\n'
                '6. Your Choices\n'
                'Access and Update: You can access and update your personal information through the app’s settings or by contacting us directly.\n'
                'Opt-Out: You may opt out of certain data collection practices or notifications by adjusting your app settings or contacting us.\n\n'
                '7. Children\'s Privacy\n'
                'Our app is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13. If we become aware of such collection, we will take steps to delete the information.\n\n'
                '8. Changes to This Privacy Policy\n'
                'We may update this Privacy Policy from time to time. We will notify you of any significant changes by posting the new policy in the app or via other communication channels.\n\n'
                '9. Contact Us\n'
                'If you have any questions about this Privacy Policy or our data practices, please contact us at:\n'
                '- Email: [vikaskumargupta765@gmail.com]\n'
                '- Address: [Rajkiya Engineering College,Azamgarh,276201]',
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
