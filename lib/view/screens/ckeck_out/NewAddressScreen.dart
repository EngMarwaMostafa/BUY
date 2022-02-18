import 'package:buyit/logic/controllers/Register_controller.dart';
import 'package:buyit/logic/controllers/address_controller.dart';
import 'package:buyit/logic/controllers/aut_controller.dart';
import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class NewAddressScreen extends StatelessWidget {
  NewAddressScreen({Key? key}) : super(key: key);

  TextEditingController addressController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final authController = Get.put(AuthController());
  final newController = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'New Address',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000)),
                  ),
                ],
              ),
              Container(
                height: 40,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 3),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.newAdressScreen);
                          },
                          child: const Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey,
                          ),
                          splashColor:
                              Get.isDarkMode ? Colors.pink : Colors.green[100],
                        ),
                      ),
                      Container(
                        width: 150,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.paymentScreen);
                          },
                          child: const Icon(
                            Icons.credit_card,
                            color: Colors.grey,
                          ),
                          splashColor:
                              Get.isDarkMode ? Colors.pink : Colors.green[100],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 5, bottom: 5, top: 5),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(15),
                    //  color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(
                    top: 5,
                    left: 50,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.newAdressScreen);
                          },
                          child: const Text(
                            'New address',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                          splashColor:
                              Get.isDarkMode ? Colors.pink : Colors.green[100],
                        ),
                      ),
                      Container(
                        width: 130,
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.editAdressScreen);
                          },
                          child: const Text(
                            'Saved address',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          splashColor:
                              Get.isDarkMode ? Colors.pink : Colors.green[100],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: const Text(
                  'Address Title',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D2D2D)),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 18),
                height: 55,
                child: TextFormField(
                 controller:addressController,
                  validator: (t) {
                    if (t!.isEmpty) {
                      return "Please enter your address.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: const Text(
                  'Full Name',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D2D2D)),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 18),
                height: 55,
                child: TextFormField(
                    controller: fullNameController,
                  validator: (t) {
                    if (t!.isEmpty) {
                      return "Please enter your address.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: const Text(
                  'Email',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D2D2D)),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 18),
                height: 55,
                child: TextFormField(
                  controller: emailController,
                  validator: (t) {
                    if (t!.isEmpty) {
                      return "Please enter your email.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: const Text(
                  'District',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D2D2D)),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 18),
                height: 55,
                child: TextFormField(
                  controller: districtController,
                  validator: (t) {
                    if (t!.isEmpty) {
                      return "District";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'District',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: const Text(
                  'City',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D2D2D)),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 18),
                height: 55,
                child: TextFormField(
                  controller:cityController,
                  validator: (t) {
                    if (t!.isEmpty) {
                      return "City";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'City',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: const Text(
                  'Street Name',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D2D2D)),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 18),
                height: 55,
                child: TextFormField(
                    controller: streetController,
                  validator: (t) {
                    if (t!.isEmpty) {
                      return "Please enter your streetNo.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Street name',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 5),
                child: const Text(
                  'Phone Nomber',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2D2D2D)),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
               // height: 55,
                child: TextFormField(
                    controller: phoneNoController,
                  validator: (t) {
                    if (t!.isEmpty) {
                      return "Please enter your phone.";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
               // width: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    primary: Get.isDarkMode ? pinkClr : mainColor,
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.newAdressScreen);
                  },
                  child: const Text(
                    "Add Address",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
