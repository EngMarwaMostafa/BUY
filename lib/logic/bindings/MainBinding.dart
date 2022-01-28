
import 'package:buyit/logic/controllers/MainController.dart';
import 'package:buyit/logic/controllers/drawer_controller.dart';
import 'package:buyit/logic/controllers/settings_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(DrawerController());
    Get.put(SettingsController());
  }
}