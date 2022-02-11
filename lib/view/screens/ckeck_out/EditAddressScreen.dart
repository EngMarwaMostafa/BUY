import 'package:buyit/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class EditAddressScreen extends StatelessWidget {
  const EditAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_outlined),
                    color: Colors.green,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const SizedBox(width: 10,),
                  const Text('New Address',style:
                  TextStyle(fontSize: 22,fontWeight: FontWeight.bold,
                      color: Color(0xff000000)),),
                ],
              ),
              Container(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 185,
                      child: IconButton(
                        icon: const Icon(Icons.location_on_outlined,
                          color: Colors.black,),
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 185,
                      child: IconButton(
                        icon: const Icon(Icons.credit_card,
                          color: Colors.black,),
                        color: Colors.green,
                        onPressed: () {
                          Get.toNamed(Routes.paymentScreen);
                        },
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            child: InkWell(
                              onTap: () {
                                Get.toNamed(Routes.newAdressScreen);
                              },
                              child: const Text('New address',
                                style: TextStyle(fontWeight: FontWeight.bold,
                                    fontSize: 14), ),
                              splashColor:
                              Get.isDarkMode ? Colors.pink : Colors.green[100],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
