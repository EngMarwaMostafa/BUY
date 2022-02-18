import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/my_string.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'language/loalization.dart';
import 'logic/controllers/aut_controller.dart';
import 'logic/controllers/theme_controller.dart';

final controller = Get.put(AuthController());

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
      locale: Locale(GetStorage().read<String>('lang').toString()),
      translations: LocaliztionApp(),
      fallbackLocale: Locale(ene),
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      initialRoute: AppRoutes.onBoardScreen,
      getPages: AppRoutes.routes,
     // home: controller.isLogged.value ? HomeScreen() : LoginScreen(),
    );
  }
}
