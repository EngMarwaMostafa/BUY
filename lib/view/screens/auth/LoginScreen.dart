

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../main.dart';
import '../HomeScreen.dart';
import '../MainScreen.dart';
import 'ForgotPasswordScreen.dart';
import 'SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();
GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.green[900],
    body: SafeArea(
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: const Text(
                'BUY',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.yellow
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height:20),
            Container(
              height: 385,
              margin: const EdgeInsets.only(left: 13,right: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),),
              child:Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const Text('Login',
                      style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28,),
                    const Divider(thickness: 2,color:Color(0xff9a9494),),
                    const SizedBox(height: 17,),
                    const Padding(
                      padding: EdgeInsets.only(left: 15,right: 15,bottom: 31),
                      child: Text('welcome, Please Login to Your Account',
                        style: TextStyle(fontSize: 15,color:Color(0xffAEAEAE), ),),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 18),
                      height: 55,
                      child: TextFormField(
                        controller: emailController,
                        validator: (t) {
                          if (t!.isEmpty) {
                            return "Please enter your email.";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 18),
                      height: 55,
                      child: TextFormField(
                        controller: passwordController,
                        validator: (t) {
                          if (t!.isEmpty) {
                            return "Please enter your password.";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),

                    FlatButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                      },
                      textColor: Colors.grey,
                      padding: const EdgeInsets.only(left:200 ),
                      child: const Text('Forgot Password?',
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 14,color: Color(0xff515C6F),),),
                    ),

                    Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      // padding: const EdgeInsets.only(bottom:18 ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),),
                      alignment: Alignment.center,
                      child: FlatButton(
                        minWidth: 320,height: 48,
                        child: const Text('LOGIN',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0),),
                        color: Colors.amber,
                        textColor: Colors.white,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            var result = authController.login(
                                emailController.text, passwordController.text);
                            if (result) {
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                  Text("Successfully logged in."),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                  Text("Invalid login credentials."),
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                Text("Invalid username or password."),
                              ),
                            );
                          }
                        },
                      ),
                    ),
              ],
            ),

                      ),
                    ),
            const SizedBox(height: 38,),
            const Text('Dont have an account? Swipe right to',
              style: TextStyle(color: Colors.white,
                  fontSize: 15,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5,),
            GestureDetector(
              onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignUpScreen()));
              },
              child: const Text('Create a New Account',
                style: TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
                  ],
                ),
              ),
            ),
  );
}
}















