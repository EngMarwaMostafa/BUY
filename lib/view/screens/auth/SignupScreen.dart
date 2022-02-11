import 'package:buyit/logic/controllers/Auth_controller.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/screens/auth/LoginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import '../MainScreen.dart';

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

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Text(
                  'BUYIT',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 460,
                margin: const EdgeInsets.only(left: 13, right: 13),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 22,
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xff9a9494),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 15, right: 15, bottom: 31),
                        child: Text(
                          'welcome, Please Create Your Account',
                          style: TextStyle(
                            fontSize: 15,
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 18),
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
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 18),
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
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 18),
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
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 18),
                        height: 55,
                        child: TextFormField(
                          controller: confirmPasswordController,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please re-enter password';
                            }
                            if (passwordController.text !=
                                confirmPasswordController.text) {
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
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: FlatButton(
                          minWidth: 320,
                          height: 48,
                          child: const Text(
                            'SIGN UP',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18.0),
                          ),
                          color: Colors.amber,
                          textColor: Colors.white,
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              controller.register(
                                  usernameController.text,
                                  passwordController.text,
                                  emailController.text,
                                  confirmPasswordController.text);
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (_) =>MainScreen(),
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
              const SizedBox(
                height: 10,
              ),
              Text(
                'Already have an account.',
                style: TextStyle(
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Text(
                  'SignIn',
                  style: TextStyle(
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
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
