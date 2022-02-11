import 'package:badges/badges.dart';
import 'package:buyit/logic/controllers/MainController.dart';
import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.put(MainController());
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () {
          return Scaffold(
            backgroundColor: context.theme.backgroundColor,
            appBar: AppBar(
              toolbarHeight: 95,
              backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
              title: const Text('BUY'),
              leading: IconButton(
                onPressed: () {
                  Get.toNamed(Routes.sideBar);
                },
                icon: Image.asset('assets/icons/menu.png'),
              ),
              actions: [
                const SizedBox(
                  width: 15,
                ),
                Obx(
                  () => Badge(
                    position: BadgePosition.topEnd(top:12, end: 3),
                    animationDuration: const Duration(milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text(
                      cartController.quantity().toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.ShoppingCartScreen);
                      },
                      icon: Image.asset('assets/icons/cart-home.png'),
                    ),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    const AssetImage('assets/icons/home.png'),
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: ImageIcon(
                    const AssetImage('assets/icons/home.png'),
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'HOME',
                ),
                BottomNavigationBarItem(
                  activeIcon: ImageIcon(
                    const AssetImage('assets/icons/categories.png'),
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: ImageIcon(
                    const AssetImage('assets/icons/categories.png'),
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.favorite,
                    color: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  icon: Icon(
                    Icons.favorite,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  label: 'Favorites',
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
                  label: 'Settings',
                ),
              ],
              onTap: (index) {
                controller.currentIndex.value = index;
              },
            ),
            body: IndexedStack(
              index: controller.currentIndex.value,
              children: controller.tabs,
            ),
          );
        },
      ),
    );
  }
}
