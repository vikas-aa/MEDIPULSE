

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:health_final/userdeatils.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  void saveuser(){
    String firstname = firstnameController.text.trim();
    String lastname = lastnameController.text.trim();
    String gender =genderController.text.trim();
  if(firstname != "" && gender != ""){
  Map<String, dynamic> userData = {
    "firstname" : firstname,
    "lastname" :lastname,
    "gender" : gender,
  };
FirebaseFirestore.instance.collection("usersname").add(userData);
print("user created!");

      Navigator.push(context, MaterialPageRoute(builder: (context)=> MyKyc()));
     
  }

  else { 
  print("please fill all the field !");
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Container(
        child:   Center(
          child:  Column(
            children: [
             const  SizedBox(
                height: 120,
              ),
      
                 Center(
                  child: Text('COMPLETE PROFILE',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 28),),
                
              ),
         Padding(
                padding: const EdgeInsets.only(top:60,left: 25,right: 25),
                child: TextField(
                 controller: firstnameController,
                  decoration: InputDecoration(
                    hintText: "first Name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21)),
                        
                    border:  const OutlineInputBorder(
                     
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 8, 78, 176),
                          width: 11,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:const  BorderSide(color: Color.fromARGB(255, 99, 82, 255), width: 2)),
                  ),
                ),
              ),
                       Padding(
                padding: EdgeInsets.only(top:10.0,left: 25,right: 25),
                child: TextField(
                 controller: lastnameController,
                  decoration: InputDecoration(
                    hintText: "last name",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21)),
                        
                    border:  const OutlineInputBorder(
                     
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 8, 78, 176),
                          width: 11,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:const  BorderSide(color: Color.fromARGB(255, 99, 82, 255), width: 2)),
                  ),
                ),
              ),
                       Padding(
                padding: EdgeInsets.only(top:10.0,left: 25,right: 25),
                child: TextField(
                controller: genderController,
                  decoration: InputDecoration(
                    hintText: "Gender",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21)),
                        
                    border:  const OutlineInputBorder(
                     
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 8, 78, 176),
                          width: 11,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:const  BorderSide(color: Color.fromARGB(255, 99, 82, 255), width: 2)),
                  ),
                ),
              ),
          Padding(
                padding: const EdgeInsets.only(top:200.0,left: 120),
                child: ElevatedButton(
                    onPressed: () {
                      saveuser();
                    },
                     style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Color.fromARGB(66, 20, 7, 201),
                              disabledForegroundColor: Color.fromARGB(255, 19, 7, 233),
                              minimumSize: const Size(150, 50),
                     ),
                    child: const Text('Next',style: TextStyle(fontWeight: FontWeight.w900),)),
              ),
            ],
         ),
      ),
      ),
    );
  }
}
    
         

