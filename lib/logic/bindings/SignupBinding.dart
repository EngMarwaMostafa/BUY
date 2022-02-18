import 'package:buyit/logic/controllers/Register_controller.dart';
import 'package:buyit/logic/controllers/aut_controller.dart';
import 'package:buyit/logic/controllers/login_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class SignupBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(RegisterController());
    Get.put(AuthController());
  }
}