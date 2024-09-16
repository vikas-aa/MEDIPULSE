import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:bottom_navy_bar/bottom_navy_bar.dart";
import 'package:flutter/rendering.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => __MyFirstPageState();
}

class __MyFirstPageState extends State<MyFirstPage> {
 int _currentIndex = 0;
 late PageController _pageController;
  @override
  void initState (){
    super.initState();
    _pageController = PageController();
  }
  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
    
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged:(index){
              setState(() {
                _currentIndex =index;
              });
            },
            children: [
              Container(
                
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SearchBar(),
                ),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
               Container(
                color: Color.fromARGB(255, 11, 158, 117),
              ),
               Container(
                color: Colors.amber,
              ),
               Container(
                color: Color.fromARGB(255, 39, 2, 118),
              ),
               Container(
                
                child: Column(
                  children: [
                    
                Expanded(
              
              
               child:Padding(
                padding: const EdgeInsets.all(19.0),
                child: ElevatedButton(
                    onPressed: () {
                      
                    },
                     style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Color.fromARGB(66, 20, 7, 201),
                              disabledForegroundColor: Color.fromARGB(255, 19, 7, 233),
                              
                     ),
                    child: const Text('LOG OUT',style: TextStyle(),)),
              ),
             ),
             
             
                  ],
                ),
                color: Color.fromARGB(255, 106, 131, 230),
              ),
            ],
          ),
        ),
        
         bottomNavigationBar :   BottomNavyBar(
          onItemSelected: (index){
            setState(() {
              _pageController.jumpToPage(index);
            });
          },
          
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(title: Text("HOME"),icon:Icon(Icons.home)),
              BottomNavyBarItem(title: Text("Notification"),icon:Icon(Icons.notification_add_rounded)),
              BottomNavyBarItem(title: Text("HEALTH"),icon:Icon(Icons.health_and_safety)),
              BottomNavyBarItem(title: Text("CHAT"),icon:Icon(Icons.chat)),
              BottomNavyBarItem(title: Text("ACCOUNT"),icon:Icon(Icons.account_box)),
            ]
          
         ),
         
      ),

   
   );
    
  }
}
