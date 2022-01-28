import 'package:buyit/logic/controllers/category_controller.dart';
import 'package:buyit/utils/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:ListView(
          children:[
            Container(
              height: 52,
              color: Colors.green,
              padding: const EdgeInsets.only(left: 40,top: 2),
              child: Row(
                children: [
                  Container(
                    // padding: const EdgeInsets.only(bottom:18 ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),),
                    alignment: Alignment.center,
                    child: FlatButton(
                      minWidth: 122,height:35,
                      child: const Text('CATEGORIES',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),),
                      color: Colors.amber,
                      textColor: Colors.white,
                      onPressed: (){
                        // Navigator.push(context,
                        //    MaterialPageRoute(builder: (context) => const VerificationScreen()));
                      },
                    ),
                  ),
                  const SizedBox(width: 24,),
                  Container(
                    // padding: const EdgeInsets.only(bottom:18 ),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),),
                    alignment: Alignment.center,
                    child: FlatButton(
                      minWidth: 122,height:35,
                      child: const Text('BRANDS',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13.0),),
                      color: Colors.white,
                      textColor: Colors.black,
                      onPressed: (){
                        // Navigator.push(context,
                        //    MaterialPageRoute(builder: (context) => const VerificationScreen()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              color: Colors.lightGreen[200],
              child: Padding(
                padding:  const EdgeInsets.only(left: 14,top: 11,right: 60),
                child: Row(
                  children:
                  const[
                    Text('CATEGORIES',style: TextStyle(fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),),
                    SizedBox(width: 103),
                    Text('ALL',style: TextStyle(fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  const EdgeInsets.only(left: 17,top: 10),
              child: Row(
                children:const [
                  Text('T-shirts',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,color: Colors.black),),
                  SizedBox(width: 115,),
                  Text('Thumbnails',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,color: Color(0xff515C6F),),),
                  SizedBox(width: 60,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_forward_ios,color: Colors.lightGreenAccent),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2,color: Color(0xff515C6F) ,),
            Padding(
              padding:  const EdgeInsets.only(left: 17,top:10),
              child: Row(
                children:const [
                  Text('Shirts',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,color: Colors.black),),
                  SizedBox(width: 109),
                  Text('Mens Appearel',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,color: Color(0xff515C6F),),),
                  SizedBox(width: 50,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_forward_ios,color: Colors.lightGreenAccent),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2,color: Color(0xff515C6F) ,),
            Padding(
              padding:  const EdgeInsets.only(left: 17,top: 10),
              child: Row(
                children:const [
                  Text('Pants & Jeans',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,color: Colors.black),),
                  SizedBox(width: 85,),
                  Text('Brand New',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,color: Color(0xff515C6F),),),
                  SizedBox(width: 45,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_forward_ios,color: Colors.lightGreenAccent),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2,color: Color(0xff515C6F),),
            Padding(
              padding:  const EdgeInsets.only(left: 17,top: 10),
              child: Row(
                children:const [
                  Text('Material',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,color: Colors.black),),
                  SizedBox(width: 140,),
                  Text('Cotton',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,color: Color(0xff515C6F),),),
                  SizedBox(width: 60,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_forward_ios,color: Colors.lightGreenAccent),
                  ),
                ],
              ),
            ),
            const Divider(thickness: 2,color: Color(0xff515C6F),),
            Padding(
              padding:  const EdgeInsets.only(left: 17,top: 10),
              child: Row(
                children:const [
                  Text('Brand',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 15,color: Colors.black),),
                  SizedBox(width: 140,),
                  Text('All Brands',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 15,color: Color(0xff515C6F),),),
                  SizedBox(width: 53,),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.arrow_forward_ios,color: Colors.lightGreenAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

