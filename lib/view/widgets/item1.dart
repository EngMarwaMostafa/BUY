import 'package:buyit/models/Product.dart';
import 'package:buyit/models/product_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item1 extends StatelessWidget {
   const Item1({Key? key, required this.productModels,
     required this.rate}) : super(key: key);
   final ProductModels productModels;
  final int? rate;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10,),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                //  color: Colors.amberAccent[400],
                borderRadius: BorderRadius.circular(10),
              ),
              //child: Image.network(productImage.first.image!, fit: BoxFit.fitHeight,),

              child:
                      Image.network(
                        productModels.productImage[0] as String,
                        fit: BoxFit.fitHeight,
                      ),
            ),
            SizedBox(height: 10,),
            Text(productModels.name),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.star, color: Colors.amber[700]),
                Icon(Icons.star, color: Colors.amber[700]),
                Icon(Icons.star, color: Colors.amber[700]),
                Icon(Icons.star, color: Colors.amber[700]),
                const Icon(Icons.star, color: Colors.grey),
                const Text(
                  '(4.5)',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
      Row(
        children: [
          Text(
            '\$ $productModels.price',
            style: const TextStyle(color: Colors.green),
          ),
          const SizedBox(
            width: 7,
          ),
          const Text(
            '|',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            width: 7,
          ),
          const Text(
            'SAR 300',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
      const Text(
        '5% VAT',
        style: TextStyle(color: Colors.grey, fontSize: 9),
      ),
      Row(
        //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 5),
          IconButton(
            onPressed:(){
             // controller.manageFavorites(productId!);
            },
               icon: Icon(
              Icons.favorite_outline,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 5),
          IconButton(
            onPressed: () {
              //cartController.addProductsToCart(productModels);
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
          ],
        ),
      ),
    );
  }
}
