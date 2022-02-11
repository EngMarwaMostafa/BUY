import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class SideBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
     body: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.cyanAccent,
            ),
              child:  ListTile(
                  leading:  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined,),
                    color: Colors.white,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                title:const Text('MENU',style:
                  TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30,
                      color:Colors.white,
                  ),),
            ),
            ),
            ListTile(
                leading:  IconButton(
                  icon:  const Icon(Icons.perm_identity,
                  size: 30,),
                  color: Colors.blue,
                  onPressed: () {
                    Get.back();
                  },
                ),
                title: const Text('Profile',
                style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.bold),),
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
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.blue,
                ),
                title: const Text('My Cart',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                onTap: () {
                  Get.toNamed(Routes.ShoppingCartScreen);
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
                  size: 30,
                  color: Colors.blue,
                ),
                title: const Text('My Favorites',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),),
                onTap: () {
                  Get.toNamed(Routes.favoriteScreen);
                }),

       ], ),
     ),
    );
  }
}

