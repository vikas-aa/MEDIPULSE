


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:health_final/firebase_options.dart';
import 'package:health_final/homescreen.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform
);
QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("Account").get();
for (var doc in snapshot.docs){
print(snapshot.docs.toString());
}
  runApp(const MyPassword());
}

class MyPassword extends StatelessWidget {
  const MyPassword({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
       title: 'Flutter Demo',
  home:MyPasswordPage(title:'Flutter Demo Home Page'),
 
    );
  }
}

class MyPasswordPage extends StatefulWidget {
  const MyPasswordPage({super.key, required this.title});


  final String title;

  @override
  State<MyPasswordPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyPasswordPage> {
   TextEditingController emailController =TextEditingController();
    TextEditingController passwordController =TextEditingController();
    TextEditingController cpasswordController =TextEditingController();
     
     void userAccount() async {
      String email = emailController.text.trim();
        String password = passwordController.text.trim();
          String cpassword =cpasswordController.text.trim();
          if(email== " " || password == " " || cpassword == " "){
            print("Please fill the details");
          }
          else if (password != cpassword){
            print('Password does not match');
          }
          else {
            try {
            UserCredential userCredential= await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
            print('user created');
                      if (userCredential != null) {
            Navigator.popUntil(context, (route) => route.isFirst);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomeScreen()));
          }
          } on FirebaseAuthException catch(ex) {
            print(ex.code.toString());
          }
          }
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
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
                 controller: emailController,
                  decoration: InputDecoration(
                    hintText: "EMAIL ",
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
                 controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "PASSWORD",
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
                controller: cpasswordController,
                  decoration: InputDecoration(
                    hintText: "CONFIRM PASSWORD",
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
                      userAccount();
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
      
      );
  }
}