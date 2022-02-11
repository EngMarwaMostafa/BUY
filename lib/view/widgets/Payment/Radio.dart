import 'package:buyit/logic/controllers/cart_controller.dart';
import 'package:buyit/routes/routes.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../text_utils.dart';

class PayMentMethodWidget extends StatefulWidget {
  const PayMentMethodWidget({Key? key}) : super(key: key);

  @override
  _PayMentMethodWidgetState createState() => _PayMentMethodWidgetState();
}

class _PayMentMethodWidgetState extends State<PayMentMethodWidget> {
  int radioPaymentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Column(
        children: [
          buildRadioPayment(
            name: "Cash on delivery \n SAR 12 will be added on CoD",
            image: 'assets/cash.png',
            scale: 0.9,
            value: 1,
            onChange: (int? value) {
              setState(() {
                radioPaymentIndex = value!;
              });
            },
          ),
          const SizedBox(
            height: 1,
          ),
          buildRadioPayment(
            name: "Visa/Master/MADA Card \n *********** ",
            image: 'assets/visa.png',
            scale: 0.8,
            value: 2,
            onChange: (int? value) {
              setState(() {
                radioPaymentIndex = value!;
              });
            },
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 330,
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
                "Continue Payment",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRadioPayment({
    required String image,
    required double scale,
    required String name,
    required int value,
    required Function onChange,
  }) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.grey[300],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Image.asset(
                image,
                scale: scale,
              ),
              const SizedBox(
                width: 10,
              ),
              TextUtils(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                text: name,
                color: Colors.black,
                underLine: TextDecoration.none,
              ),
            ],
          ),
          Radio(
            value: value,
            groupValue: radioPaymentIndex,
            fillColor: MaterialStateColor.resolveWith((states) => mainColor),
            onChanged: (int? value) {
              onChange(value);
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
