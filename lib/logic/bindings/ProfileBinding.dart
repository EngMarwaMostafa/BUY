
import 'package:buyit/logic/controllers/profile_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ProfileBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}