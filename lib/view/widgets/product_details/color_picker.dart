import 'package:buyit/models/ProductDetailsModels.dart';
import 'package:buyit/view/screens/ProductDetailsScreen.dart';
import 'package:flutter/cupertino.dart';


class ColorPicker extends StatelessWidget {
final  List<String> color;
final ProductDetailsModels productDetailsModels;
  const ColorPicker({
    Key? key, required this.color,
    required this.productDetailsModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
    //     color:productDetailsModels.color[index],
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

