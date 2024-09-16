import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:health_final/password.dart';



class MyVerifyOtp extends StatefulWidget {
  final String verificationId;
  const MyVerifyOtp({Key? key,required this.verificationId}): super(key: key);

  @override
  State<MyVerifyOtp> createState() => _MyVerifyOtpState();
}

class _MyVerifyOtpState extends State<MyVerifyOtp> {
  TextEditingController otpController = TextEditingController();
  void verifyotp() async {
    String otp =otpController.text.trim();
    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: widget.verificationId, smsCode: otp);
  
  try {
    UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCredential.user !=null){
     Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyPassword()));

    } 
    }
    on FirebaseAuthException catch(ex){
      print(ex.code.toString());
  } 
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        
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
                    controller: otpController,
                    maxLength: 6,
                    decoration: InputDecoration(
                      counterText: " ",
                      hintText: "𝗘𝗡𝗧𝗘𝗥 𝗬𝗢𝗨𝗥 𝗢𝗧𝗣",
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
                    onPressed: () {
                       
                    verifyotp();
                  
                    },
                     style: ElevatedButton.styleFrom(
                              disabledBackgroundColor:const  Color.fromARGB(66, 20, 7, 201),
                              disabledForegroundColor: const Color.fromARGB(255, 19, 7, 233),
                              minimumSize: const Size(150, 50),
                     ),
                    child: const Text('𝗗𝗢𝗡𝗘',style: TextStyle(fontWeight: FontWeight.w900),)),
              ),
            ],
         ),
      ),
      ),  
    );
  }
}
