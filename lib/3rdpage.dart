

import 'package:flutter/material.dart';
import 'package:health_final/4thpage.dart';
import 'package:health_final/bmi.dart';
import 'package:health_final/dentalclinic.dart';
import 'package:health_final/doctor.dart';
import 'package:health_final/healthissues.dart';
import 'package:health_final/healthpreventation.dart';
import 'package:health_final/healthtips.dart';

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
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
                    
                    SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'HEALTH',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          'HEALTH IS WEALTH',
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
                  children: [
                    Text(
                      'CHOOSE YOUR HEALTH SERVICES',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 25.0),
                    SizedBox(
                      height: 500, // Adjust height as needed
                      child: ListView.builder(
                        itemCount: 9, // Number of items
                        itemBuilder: (context, index) {
                          return _buildListTileWithAvatar(
                            context: context,
                            icon: _getIconForIndex(index),
                            title: _getTitleForIndex(index),
                            index:index,
                            onTap: () {
                              // Implement tap functionality here
                              print('Item $index tapped');
                            },
                          );
                        },
                      ),
                      
                    ),
                    
                  ],
                ),
              ),
             
              
            
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTileWithAvatar({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required int index,
  }) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.blueAccent,
        child: Icon(icon, size: 20, color: Colors.white),
      ),
      title: Text(title),
      onTap: () {
        // Navigate based on the index
        switch (index) {
          case 0: Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Doctor(), // Change to appropriate page
              ),
            );
          
            break;
          case 1:
            Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Doctor(), // Change to appropriate page
              ),
            );
            break;
          case 2:
            Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const Dental(), // Change to appropriate page
              ),
            );
            break;
          case 3:
            Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const BmiCal(), // Change to appropriate page
              ),
            );
            break;
            case 4:
              Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const HealthPrevention(), // Change to appropriate page
              ),
            );
            case 5:
              Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const HealthIssues(), // Change to appropriate page
              ),
            );
            break;
            case 6:
              Navigator.push(context,
              MaterialPageRoute(
                builder: (BuildContext context) => const HealthTips(), // Change to appropriate page
              ),
            );
            break;
          default:
            // Handle default case or do nothing
            break;
        }
      },
    );
  }

  IconData _getIconForIndex(int index) {
    // Return an icon based on the index or some other logic
    switch (index) {
      case 0:
        return Icons.health_and_safety_sharp;
      case 1:
        return Icons.heat_pump_outlined;
      case 2:
        return Icons.language;
        case 3:
        return Icons.health_and_safety_rounded;
          case 4:
        return Icons.health_and_safety_rounded;
        case 5:
        return Icons.health_and_safety_rounded;
        case 6:
        return Icons.health_and_safety_rounded;
         case 7:
        return Icons.health_and_safety_rounded;
      default:
        return Icons.health_and_safety_outlined;
    }
  }

  String _getTitleForIndex(int index) {
    // Return a title based on the index or some other logic
    switch (index) {
      case 0:
        return 'General Physician';
      case 1:
        return 'Specilist';
      case 2:
        return 'Dental clinic';
        case 3:
        return 'BMI';
        case 4:
        return 'Health preventation';
        case 5:
        return 'Health Isuues';
        case 6:
        return ' health Tips';
         case 7:
        return '????';
      default:
        return '???';
    }
  }
}
