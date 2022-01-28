

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../main.dart';
import '../HomeScreen.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
              height: 460,
              margin: const EdgeInsets.only(left: 13,right: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),),
              child:Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const Text('Sign Up',
                      style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28,),
                    const Divider(thickness: 2,color:Color(0xff9a9494),),
                    const SizedBox(height: 17,),
                    const Padding(
                      padding: EdgeInsets.only(left: 15,right: 15,bottom: 31),
                      child: Text('welcome, Please Create Your Account',
                        style: TextStyle(fontSize: 15,color:Color(0xffAEAEAE), ),),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 18),
                      height: 55,
                      child: TextFormField(
                        controller: usernameController,
                     validator: (t) {
                  if (t!.isEmpty) {
                  return "Please enter your username.";
                 }
                  return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Full Name',
                        ),
                      ),
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
                    Container(
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 18),
                      height: 55,
                      child: TextFormField(
                        controller: confirmPasswordController,
                        validator: (String? value) {
                      if (value == null || value.isEmpty) {
                  return 'Please re-enter password';
                  }
                   if (passwordController.text != confirmPasswordController.text) {
                  return "Password does not match";
                          }
                   return null;
                       },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 18),
                      // padding: const EdgeInsets.only(bottom:18 ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),),
                      alignment: Alignment.center,
                      child: FlatButton(
                        minWidth: 320,height: 48,
                        child: const Text('SIGN UP',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0),),
                        color: Colors.amber,
                        textColor: Colors.white,
                        onPressed: ()async{
                        if (_formKey.currentState!.validate()) {
                   authController.register(
                   usernameController.text, passwordController.text);
                Navigator.of(context)
                     .pushReplacement(MaterialPageRoute(
               builder: (_) => HomeScreen(),
          ));
        ScaffoldMessenger.of(context).showSnackBar(
       const SnackBar(
       content: Text("Successfully registered!"),
      ),
     );
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
          ],
        ),
      ),
      ),
    );
  }
}
