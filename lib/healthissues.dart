import 'package:flutter/material.dart';
class HealthIssues extends StatelessWidget {
  const HealthIssues({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text(
             ' Cardiovascular Diseases: Includes conditions such as heart disease, hypertension, and stroke, often linked to lifestyle factors like diet and exercise',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '' ,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              'Diabetes: Both Type 1 and Type 2 diabetes involve issues with blood sugar regulation and can lead to serious complications if not managed properly',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              'Respiratory Diseases: Includes chronic obstructive pulmonary disease (COPD), asthma, and lung infections, often exacerbated by smoking and air pollution',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              'Obesity: Excess body weight can lead to numerous health problems, including diabetes, heart disease, and joint issues. It is influenced by diet, exercise, and genetics',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '6. Mental Health Care: Manage stress through techniques such as meditation, deep breathing exercises, and mindfulness. Seek professional help if needed to address mental health concerns.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '7. Adequate Sleep: Aim for 7-9 hours of quality sleep per night. Maintain a consistent sleep schedule and create a restful sleeping environment.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '8. Avoid Smoking: Refrain from smoking and using tobacco products. Seek support to quit if you currently smoke.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '9. Limit Alcohol Consumption: If you drink alcohol, do so in moderation. For women, this means up to one drink per day, and for men, up to two drinks per day.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '10. Safe Sex Practices: Use protection and get regular STI screenings to reduce the risk of sexually transmitted infections and unintended pregnancies.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '11. Maintain a Healthy Weight: Achieve and maintain a healthy weight through a combination of balanced eating and regular physical activity. Consult with a healthcare provider for personalized guidance.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '12. Regular Dental Care: Brush and floss teeth daily and visit the dentist regularly for check-ups and cleanings.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '13. Sun Protection: Protect your skin from excessive sun exposure by using sunscreen with a high SPF, wearing protective clothing, and avoiding tanning beds.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '14. Healthy Relationships: Cultivate and maintain supportive relationships with family and friends. Healthy social connections contribute positively to mental and emotional well-being.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '15. Hand Hygiene: Practice good hand hygiene by washing hands frequently with soap and water, especially before eating or touching your face.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '16. Environmental Safety: Ensure your living environment is safe and free from hazards such as mold, lead, and unsafe drinking water.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '17. Avoid Excessive Screen Time: Limit screen time and take breaks to prevent eye strain and promote physical activity. Follow the 20-20-20 rule: every 20 minutes, look at something 20 feet away for 20 seconds.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '18. Preventive Medications: Take any prescribed medications as directed by your healthcare provider. Discuss any concerns or side effects with them.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '19. Self-Exams: Perform regular self-exams, such as breast or testicular self-exams, to detect any unusual changes early.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8.0),
            Text(
              '20. Emergency Preparedness: Know basic first aid and CPR. Have an emergency plan in place for your family, including knowing the locations of nearest hospitals and emergency contacts.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}