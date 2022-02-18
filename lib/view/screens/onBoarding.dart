
import 'package:buyit/logic/controllers/Register_controller.dart';
import 'package:buyit/logic/controllers/aut_controller.dart';
import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'auth/LoginScreen.dart';

class OnBoardScreen extends StatefulWidget {
  OnBoardScreen({Key? key}) : super(key: key);

  final controller = Get.put(AuthController());

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        finishCallback: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
    );
  }

  final pages = [
    PageModel(
        color: Colors.purple,
        imageAssetPath: 'assets/splash.jpg',
        title: 'BUY IT',
        body: 'You will find what you dream',
        doAnimateImage: true),
    PageModel(
        color: Colors.pinkAccent,
        imageAssetPath: 'assets/splash.jpg',
        title: 'BUY IT',
        body: 'See the increase in productivity & output',
        doAnimateImage: true),
    PageModel(
        color: Colors.deepOrange,
        imageAssetPath: 'assets/splash.jpg',
        title: 'BUY IT',
        body: 'Discounts all over the year',
        doAnimateImage: true),
  ];
}