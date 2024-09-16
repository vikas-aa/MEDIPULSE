import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:health_final/dashborad.dart';
import 'package:health_final/firstpage.dart';
import 'package:health_final/recreatepass.dart';


class MyLogIn extends StatefulWidget {
  const MyLogIn({super.key});

  @override
  State<MyLogIn> createState() => _LogInState();
}

class _LogInState extends State<MyLogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() async {
    String email = emailController.text.trim();
     String password = passwordController.text.trim();
     if (email == " " || password == " ") {
      print("please fill the deatils ");
     }
     else {
      try{
          UserCredential userCredential = await FirebaseAuth.instance.
          signInWithEmailAndPassword(email: email, password: password);
          if (userCredential != null) {
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyFirstPage()));
          }
      } on FirebaseAuthException catch(ex){
        print(ex.code.toString());
      }
     }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
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
                  controller:emailController ,
                  decoration: InputDecoration(
                    hintText: "Email",
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
                   
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(color: Colors.deepOrange)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide:
                          const BorderSide(color: Color.fromARGB(255, 99, 82, 255), width: 2),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.remove_red_eye),
                      onPressed: () {
                        ElevatedButton(
                          onPressed: () {},
                          
                            
                          
                          child: const Text(''),
                        );
                      },
                    ),
                  ),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(left:120.0),
                 child: TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyForgetPass()));
                    }, child:const Text('Forget Password?')),
               ),
              
              ElevatedButton(
                  onPressed: () {
                  login();
                  },
                   style: ElevatedButton.styleFrom(
                            disabledBackgroundColor: const Color.fromARGB(66, 0, 0, 0),
                            disabledForegroundColor: Colors.deepPurpleAccent,
                            minimumSize: const Size(150, 50),
                   ),
                  child: const Text('Log IN',style: TextStyle(fontWeight: FontWeight.w900),)),
                 Padding(
                   padding: const EdgeInsets.only(top:100.0,right: 160),
                   child: TextButton(onPressed: (){
                     Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const   Dashboard(),
                          ));
                   }, child: const Text('Back',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)),
                 ),
                   
              ],
          ),
        ),
      ),
          ],
      ),
      )
    );
  }
}