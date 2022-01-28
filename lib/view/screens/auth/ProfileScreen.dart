import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: SafeArea(
        child:ListView(
          children: [
            Padding(
              padding:const EdgeInsets.only(left: 20,top: 30),
              child: Row(
                children: const[
                  Icon(Icons.arrow_back_ios,color: Colors.green,),
                  SizedBox(width: 25,),
                  Text('Edit Profile',style:
                  TextStyle(fontWeight: FontWeight.bold,fontSize: 22,
                      color: Color(0xff515C6F)),),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Image.asset('assets/image.png',
              width: 100,height: 100,
              alignment: Alignment.center,),
            const SizedBox(height: 20,),
            const Text('Update Profile Piture',textAlign: TextAlign.center,style:
            TextStyle(fontSize: 15,fontWeight: FontWeight.w900,
                color: Color(0xff333333)),),
            const SizedBox(height: 30,),
            const Divider(thickness: 2,color:Color(0xff9a9494),),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,bottom: 15),
              child: Row(
                children: const [
                  Icon(Icons.perm_identity,size: 22,
                    color: Colors.green,),
                  SizedBox(width: 22,),
                  Text('ASRAF AL MASHARI',style:
                  TextStyle(fontSize: 15,color: Color(0xff333333),),),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            const Divider(thickness: 2,color:Color(0xff9a9494),),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,bottom: 15),
              child: Row(
                children:const[
                  Icon(Icons.email_outlined,size:22,
                    color: Colors.green,),
                  SizedBox(width: 22,),
                  Text('ASRAF AL MASHARI@domain.com',style:
                  TextStyle(fontSize: 15,color: Color(0xff333333),),),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            const Divider(thickness: 2,color:Color(0xff9a9494),),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,bottom: 15),
              child: Row(
                children: [
                  Image.asset('assets/mobile.png',
                    color: Colors.green,),
                  const SizedBox(width: 22,),
                  const Text('+919888888',style:
                  TextStyle(fontSize: 15,color: Color(0xff333333),),),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
            const Divider(thickness: 2,color:Color(0xff9a9494),),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,bottom: 15),
              child: Row(
                children: const [
                  Icon(Icons.lock_outline,size: 18,
                    color: Colors.green,),
                  SizedBox(width: 22,),
                  Text('Gender - Male',style:
                  TextStyle(fontSize: 15,color: Color(0xff333333),),),
                  SizedBox(height: 20,),
                ],
              ),
            ),
            const Divider(thickness: 2,color:Color(0xff9a9494),),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,bottom: 15),
              child:  Row(
                children:[
                  Image.asset('assets/calnder.png',
                    color: Colors.green,),
                  const SizedBox(width: 22,),
                  const Text('Birth - Jan01,1960',style:
                  TextStyle(fontSize: 15,color: Color(0xff333333),),),
                  const SizedBox(height: 20,),
                ],
              ),),
            const Divider(thickness: 2,color:Color(0xff9a9494),),
          ],
        ),
      ),
    );
  }
}
