import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:buyit/view/widgets/Payment/Radio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int radioIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        title: const Text("Payment"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined),
          color: Colors.green,
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_outlined),
            color: Colors.green,
            onPressed: () {
              Get.back();
            },
          ),
          const SizedBox(
            width: 24,
          ),
          const Text(
            'Payment',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xff515C6F),
            ),
          ),
          Container(
            height: 50,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(left: 14, top: 14),
              child: Row(
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
                        Get.toNamed(Routes.newAdressScreen);
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
      const RadioWidget(),
        ],
      ),
    );
  }
}
