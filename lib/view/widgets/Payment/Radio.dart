import 'package:buyit/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({Key? key}) : super(key: key);

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  int radioIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ImageIcon(
          AssetImage("assets/cash.png"),
        ),
        const SizedBox(
          width: 12,
        ),
        const Text(
          'Cash on delivery',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        buildRadioContainer(
            value: 1,
            onChanged: (int? value) {
              setState(() {
                radioIndex = value!;
              });
            }),
        const SizedBox(
          height: 35,
        ),
        buildRadioContainer(
            value: 2,
            onChanged: (int? value) {
              setState(
                () {
                  radioIndex = value!;
                },
              );
            }),
      ],
    );
  }

  Widget buildRadioContainer({
    required int value,
    required Function onChanged,
  }) {
    return Container(
      height: 124,
      padding: const EdgeInsets.only(left: 15, top: 23, right: 23, bottom: 35),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Radio(
                value: value,
                groupValue: radioIndex,
                fillColor: MaterialStateColor.resolveWith(
                    (states) => Colors.purpleAccent),
                onChanged: (int? value) {
                  onChanged(value);
                },
              ),

              const SizedBox(
                height: 6,
              ),
            ],
          ),
          const Text(
            'SAR 12 will be added on COD',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff6A737C),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xff6A737C),
          ),
          Row(
            children: const [
              ImageIcon(
                AssetImage("assets/visa.png"),
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                'Visa/Master/MADA Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const Text(
            '*************',
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff6A737C),
            ),
          ),
        ],
      ),
    );
  }
}
