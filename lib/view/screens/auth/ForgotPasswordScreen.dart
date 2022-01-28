
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';



class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {


  // ignore: non_constant_identifier_names
  TextEditingController mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: const Text(
                'BUY',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.yellow
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height:54),
            Container(
              height: 330,
              margin: const EdgeInsets.only(left: 13,right: 13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),),
              child:Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const Text('Forgot Password',
                      style: TextStyle(fontSize: 22,color: Colors.green,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28,),
                    const Divider(thickness: 2,color:Color(0xff9a9494),),
                    const SizedBox(height: 17,),
                    const Padding(
                      padding: EdgeInsets.only(left: 15,right: 15,bottom: 31),
                      child: Text('Enter the email address you used to create your account and we'
                          'will email you a link reset your password',
                        style: TextStyle(fontSize: 15,color:Color(0xffAEAEAE), ),),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                      child: TextField(
                        controller: mobileNumberController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mobile Number',
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
                        child: const Text('RESET',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18.0),),
                        color: Colors.amber,
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()));
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
    );
  }
}
