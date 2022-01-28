import 'package:buyit/logic/controllers/MainController.dart';
import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';


  class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Obx(() {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 95,
              backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
              // backgroundColor: Colors.green[900],
              title: const Text('BUY'),
           leading:  IconButton(
                onPressed: () {
                  Get.toNamed(Routes.sideBar);
                },
                icon: Image.asset('assets/icons/menu.png'),),
              actions: [
                const SizedBox(width: 15,),
         IconButton(
                  onPressed: () {
                    Get.toNamed(Routes.paymentScreen);
                  },
                  icon: Image.asset('assets/icons/cart-home.png'),),
                const SizedBox(width: 12,),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items:  [
           BottomNavigationBarItem(
                  activeIcon:
                  ImageIcon(
                    const AssetImage('assets/icons/categories.png'),
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: ImageIcon(
                    const AssetImage('assets/icons/categories.png'),
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: '',
                ),
               BottomNavigationBarItem(
                  activeIcon:
                   ImageIcon(
                    const AssetImage('assets/icons/offers.png'),
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: ImageIcon(
                    const AssetImage('assets/icons/offers.png'),
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    const AssetImage('assets/icons/home.png'),
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon:ImageIcon(
                    const AssetImage('assets/icons/home.png'),
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    const AssetImage('assets/icons/myOrders.png'),
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: ImageIcon(
                    const AssetImage('assets/icons/myOrders.png'),
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.settings,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: Icon(
                    Icons.settings,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: '',
                ),
              ],
              onTap: (index) {
                controller.currentIndex.value = index;
              },
            ),
            body: IndexedStack(
              index: controller.currentIndex.value,
              children:controller.tabs ,
            ),
          );
        },
      ),
    );
  }
}

