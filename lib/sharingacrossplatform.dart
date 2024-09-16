import 'package:flutter/material.dart';

class SharingAcross extends StatelessWidget {
  const SharingAcross({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sharing Across Platforms'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '1. Introduction\n\n'
                'Sharing across platforms allows you to seamlessly access and synchronize your health data across different devices and platforms. Whether you\'re using our mobile app on your smartphone or accessing your health metrics on a tablet, our app ensures that your information is consistent and up-to-date.\n\n'
                '2. How Data is Shared\n\n'
                'Our app synchronizes your data across all your devices in real time. When you update your health information, such as tracking your steps or logging a workout, the changes are automatically updated across all devices where you have the app installed. This ensures that your data is always consistent and up-to-date.\n\n'
                '3. Supported Platforms\n\n'
                'You can access and share your health data across the following platforms:\n\n'
                '- **iOS Devices**: iPhone and iPad\n'
                '- **Android Devices**: Smartphones and Tablets\n'
                '- **Web Application**: Access your data through our web portal on any browser\n\n'
                '4. Data Syncing\n\n'
                'To ensure your data is synced across platforms, make sure you are logged into the same account on all devices. Enable cloud syncing in the app’s settings to automatically sync your data. You can check the sync status and manage settings under the "Account" section.\n\n'
                '5. Privacy and Security\n\n'
                'Your data is encrypted during transmission and storage to ensure it is protected across all platforms. We adhere to strict privacy policies to safeguard your information and only share data that you have explicitly consented to.\n\n'
                '6. User Control\n\n'
                'You have full control over what data is shared across platforms. You can adjust your sharing preferences in the "Settings" menu under "Privacy" and "Sync Preferences". Here, you can choose which data you want to sync and with which devices.\n\n'
                '7. Troubleshooting\n\n'
                'If you experience issues with syncing your data, try the following:\n\n'
                '- Ensure you have a stable internet connection.\n'
                '- Check that you are logged into the same account on all devices.\n'
                '- Restart the app and try syncing again. If the problem persists, contact our support team for assistance.',
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
