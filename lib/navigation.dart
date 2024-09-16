

import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:health_final/1stpage.dart";
import "package:health_final/2ndpage.dart";
import "package:health_final/3rdpage.dart";
import "package:health_final/4thpage.dart";


class NavigationMenu extends StatelessWidget {
  const NavigationMenu ({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    
    return Scaffold(
 
      bottomNavigationBar:Obx(
        () => NavigationBar(
        height: 80,
        elevation: 0,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: (index) => controller.selectedIndex.value=index,

        destinations:const  [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
           NavigationDestination(icon: Icon(Icons.notification_add), label: 'Notification'),
            NavigationDestination(icon: Icon(Icons.health_and_safety), label: 'HEALTH'),
             NavigationDestination(icon: Icon(Icons.account_box), label: 'ACCOUNT'),
        
        ],
      ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value],)
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [const FirstPage(),const SecondPage(),const ThreePage(),const FourthPage()];
}