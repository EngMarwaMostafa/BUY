import 'package:buyit/routes/routes.dart';
import 'package:buyit/services/Auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';


class RegisterController extends GetxController {

  var isLoading = false.obs;
  final registerFormKey = GlobalKey<FormState>();
  late TextEditingController usernameController,
      emailController,
      passwordController,
      mobileController;
  String name = '',
      email = '',
      password = '',
      mobile = '';
  final storage = const FlutterSecureStorage();

  @override
  void onInit() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    mobileController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
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

  String? validateMobile(String value) {
    if (value.length <= 11) {
      return 'Please re-enter mobile';
    } else {
      return null;
    }
  }


  doRegister() async {
    bool isValidate = registerFormKey.currentState!.validate();

    if (isValidate) {
      isLoading(true);
      try {
        var data = AuthServices.register(userName: usernameController.text,
            email: emailController.text, password: passwordController.text,
           mobile:mobileController.text
        );
        if (data != null) {
          await storage.write(key: 'id', value: data.id);
          await storage.write(key: 'token', value: data.token);
          registerFormKey.currentState!.save();
          Get.toNamed(AppRoutes.mainScreen);
        }else{
          Get.snackbar('register', 'problem in register');
        }
      } finally {
        isLoading(false);
      }
    }
  }

}

