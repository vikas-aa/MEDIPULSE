import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:health_final/dashborad.dart';
class MyForgetPass extends StatefulWidget {
  const MyForgetPass({super.key});

  @override
  State<MyForgetPass> createState() => _MyForgetPassState();
}

class _MyForgetPassState extends State<MyForgetPass> {
  TextEditingController emailController = TextEditingController();
 void reset() async {
    var email = emailController.text.trim();
                         try{
                          await FirebaseAuth.instance
                          .sendPasswordResetEmail(email: email)
                          .then((value) => {
                            print("Email SENT"),
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()))
                          });
                      } on FirebaseAuthException catch (e){
                        print("Error $e");
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
         child: Padding(
                  padding: const EdgeInsets.only(top: 100,left: 25,right: 25),
                  child: TextField(
                    controller: emailController,
            
                    decoration: InputDecoration(
                      counterText: " ",
                      hintText: "EMAIL",
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Color.fromARGB(255, 3, 16, 211),)),
                          
                      border:  const OutlineInputBorder(
                       
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 15, 3, 236),
                            width: 11,
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide:const  BorderSide(color: Color.fromARGB(255, 99, 82, 255), width: 2)),
                    ),
                  ),
                ),
              
       ), 
         Padding(
                padding: const EdgeInsets.all(19.0),
                child: ElevatedButton(
                    onPressed: () async {
                         reset();
                    },
                  

                    
                  
                    
                     style: ElevatedButton.styleFrom(
                              disabledBackgroundColor:const  Color.fromARGB(66, 20, 7, 201),
                              disabledForegroundColor: const Color.fromARGB(255, 19, 7, 233),
                              minimumSize: const Size(150, 50),
                     ),
                    child: const Text("Reset password",style: TextStyle(fontWeight: FontWeight.w900),)),
              ),
            ],
         ),
      ),
      ),  
    );
  }
}

    