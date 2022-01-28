
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleItems extends StatelessWidget {
  const CircleItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
SingleChildScrollView(
scrollDirection: Axis.horizontal,
child: Row(
children: [
Padding(
padding: const EdgeInsets.only(left: 15,right: 32,bottom: 8,top: 15),
child: Column(
children:const [
CircleAvatar(
radius: 37,
child: Icon
(Icons.open_with_rounded, color: Colors.black,),
),
Text('Accessories'),
],
),
),
Padding(
padding: const EdgeInsets.only(left: 15,right: 32,bottom: 8,top: 15),
child:
Column(
children:const [
CircleAvatar(
radius: 37,
child: Icon
(Icons.open_with_rounded, color: Colors.black,),
),
Text('Accessories'),
],
),
),
Padding(
padding: const EdgeInsets.only(left: 15,right: 32,bottom: 8,top: 15),
child:
Column(
children:const [
CircleAvatar(
radius: 37,
child: Icon
(Icons.open_with_rounded, color: Colors.black,),
),
Text('Accessories'),
],
),
),
Padding(
padding: const EdgeInsets.only(left: 15,right: 32,bottom: 8,top: 15),
child:
Column(
children:const [
CircleAvatar(
radius: 37,
child: Icon
(Icons.open_with_rounded, color: Colors.black,),
),
Text('Accessories'),
],
),
),
Padding(
padding: const EdgeInsets.only(left: 15,right: 32,bottom: 8,top: 15),
child:
Column(
children:const [
CircleAvatar(
radius: 37,
child: Icon
(Icons.open_with_rounded, color: Colors.black,),
),
Text('Accessories'),
],
),
),
],
),
);
  }
  }
