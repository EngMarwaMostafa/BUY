
import 'package:buyit/routes/routes.dart';
import 'package:buyit/view/screens/FavoriteScreen.dart';
import 'package:buyit/view/screens/SplashScreen.dart';
import 'package:buyit/view/screens/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'logic/controllers/auth_controller.dart';


AuthController authController = AuthController();

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BUY IT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    initialRoute: AppRoutes.splash,
      getPages: AppRoutes.routes,
       home:SplashScreen(),
    );
  }
}