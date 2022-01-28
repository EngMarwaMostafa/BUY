import 'package:buyit/view/screens/CategoriesScreen.dart';
import 'package:buyit/view/screens/HomeScreen.dart';
import 'package:buyit/view/screens/MyOrdersScreen.dart';
import 'package:buyit/view/screens/OffersScreen.dart';
import 'package:buyit/view/screens/SettingsScreen.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MainController extends GetxController {

  RxInt currentIndex = 0.obs;

  var tabs = [
    CategoriesScreen(),
    OffersScreen(),
    HomeScreen(),
    MyOrdersScreen(),
   SettingsScreen(),
  ].obs;

  var title = [
    "Categories",
    'Offers',
    'BUYIT',
    'MyOrders',
    "Settings",
  ].obs;
}

