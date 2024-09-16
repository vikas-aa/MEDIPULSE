

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_final/firstpage.dart';
class MyKyc extends StatefulWidget {
  const MyKyc({super.key});

  @override
  State<MyKyc> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyKyc> {
  TextEditingController dobController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  void userdetails(){
    String dob = dobController.text.trim();
    String height = heightController.text.trim();
    String weight  = weightController.text.trim();
    
  if(dob!= ""){
  Map<String, dynamic> userData = {
    "dob" : dob,
    "height" :height,
    "weight" : weight,
  };
FirebaseFirestore.instance.collection("usersdetails").add(userData);
print("user created!");
   Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyFirstPage()));

  }

  else { 
  print("please fill all the field !");
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Container(
        child: Column(
          children : [ Padding(
                padding: const EdgeInsets.only(top:300,left: 25,right: 25),
                child: TextField(
                 controller:dobController,
                 maxLength: 10,
                  decoration: InputDecoration(
                    counterText: " ",
                    hintText: "𝗗𝗢𝗕",
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
                   keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                ),
              ),
                      Padding(
                padding: EdgeInsets.only(top:10.0,left: 25,right: 25),
                child: TextField(
                 controller: weightController,
                 maxLength: 3,
                  decoration: InputDecoration(
                  counterText: " ",
                    hintText: "𝗪𝗘𝗜𝗚𝗛𝗧 𝗜𝗡 𝗞𝗚",
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
                   keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
                       Padding(
                padding: EdgeInsets.only(top:10.0,left: 25,right: 25),
                child: TextField(
                controller: heightController,
                maxLength: 3,
                  decoration: InputDecoration(
                    counterText: " ",
                    hintText: "𝗛𝗘𝗜𝗚𝗛𝗧 𝗜𝗡 𝗖𝗠",
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
                   keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
          Padding(
                padding: const EdgeInsets.all(19.0),
                child: ElevatedButton(
                    onPressed: () {
                      userdetails();
                    },
                     style: ElevatedButton.styleFrom(
                              disabledBackgroundColor: Color.fromARGB(66, 20, 7, 201),
                              disabledForegroundColor: Color.fromARGB(255, 19, 7, 233),
                              minimumSize: const Size(150, 50),
                     ),
                    child: const Text('𝗦𝗨𝗕𝗠𝗜𝗧',style: TextStyle(fontWeight: FontWeight.w900),)),
              ),
              
            
          ]
      ),
      ),
    );
  }
}
    
         

