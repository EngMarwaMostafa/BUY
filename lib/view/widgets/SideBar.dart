import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/screens/auth/ProfileScreen.dart';
import 'package:buyit/view/screens/auth/ProfileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SideBar extends StatelessWidget {
  // final drawerController = Get.put(DrawerController(alignment:,));
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
      child: Column(
        children: [
          Container(
            height: 95,
              child: const Text('MENU',)),
             ListTile(
              leading: const Icon(
                Icons.perm_identity,
                size: 22,
                color: Colors.green,
              ),
              title: const Text('Profile'),
              onTap: () {
                Get.toNamed(Routes.profileScreen);
              }),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              leading: const Icon(
                Icons.perm_identity,
                size: 22,
                color: Colors.green,
              ),
              title: const Text('Language'),
              onTap: () {
                Get.toNamed(Routes.profileScreen);
              }),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              leading: const Icon(
                Icons.perm_identity,
                size: 22,
                color: Colors.green,
              ),
              title: const Text('LogOut'),
              onTap: () {
                Get.toNamed(Routes.profileScreen);
              }),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              leading: const Icon(
                Icons.perm_identity,
                size: 22,
                color: Colors.green,
              ),
              title: const Text('Contact Us'),
              onTap: () {
                Get.toNamed(Routes.profileScreen);
              }),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              leading: const Icon(
                Icons.perm_identity,
                size: 22,
                color: Colors.green,
              ),
              title: const Text('About Us'),
              onTap: () {
                Get.toNamed(Routes.paymentScreen);
              }),
          Divider(
            color: Get.isDarkMode ? Colors.white : Colors.grey,
            thickness: 2,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
