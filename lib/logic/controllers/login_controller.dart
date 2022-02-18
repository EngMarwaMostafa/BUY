
import 'package:buyit/routes/routes.dart';
import 'package:buyit/services/Auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;

  final loginFormKey = GlobalKey<FormState>();
  late TextEditingController
      emailController,
      passwordController;

      String email = '', password = '';

  final storage = const FlutterSecureStorage();

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Wrong Email';
    } else {
      return null;
    }
  }


  String? validatePassword(String value) {
    if (value.length <= 5) {
      return 'Wrong Password';
    } else {
      return null;
    }
  }



  doLogin() async {
    bool isValidate = loginFormKey.currentState!.validate();

    if (isValidate) {
      isLoading(true);
      try {
        var data = AuthServices.login(
            email: emailController.text,
          password: passwordController.text,
        );
        if (data != null) {
          await storage.write(key: 'id', value: data.id);
          await storage.write(key: 'token', value: data.token);
         loginFormKey.currentState!.save();
          Get.toNamed(AppRoutes.mainScreen);
        }else{
          Get.snackbar('login', 'problem in register');
        }
      } finally {
        isLoading(false);
      }
    }
  }

}
