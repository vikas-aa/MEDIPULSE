
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_final/verifyotp.dart';

class MyPhone extends StatefulWidget {
  
  const MyPhone ({Key? key}): super(key: key);

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController phoneController = TextEditingController();

  void sendOTP() async{
    String phone =  "+91" + phoneController.text.trim();
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phone, 
      codeSent: (verificationId, resendToken) {
              Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyVerifyOtp(
            verificationId: verificationId,
          )));
      },
      verificationCompleted: (credential) {},
      verificationFailed: (ex) {
        print(ex.code.toString());
      },
      codeAutoRetrievalTimeout: (verificationId) {},
      timeout: Duration(seconds: 30)
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/image_one.jpg'),
            fit: BoxFit.cover,
          ),
        ),
          child: Column(
          children: [
            const SizedBox(
              height: 120,
            ),
            const Text(
              'WELCOME TO',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 39,
              ),
            ),
            const Text(
              'HEALTH BANK',
              style: TextStyle(
                fontSize: 39,
              ),
            ),
            const SizedBox(
              height: 140,
            ),
          Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller:phoneController ,
                  decoration: InputDecoration(
                    hintText: "Mobile Number",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21)),
                    border: const OutlineInputBorder(
                     
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
               const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
              sendOTP();
              }, child: const Text('verfify'))
           

           ],
          ),
          ), 
    ),
          
          ],
    
      ),
      ),
    );
  }
}