
import 'dart:convert';

import 'package:buyit/models/login_request.dart';
import 'package:buyit/models/login_response.dart';
import 'package:buyit/utils/my_string.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:buyit/models/register_request.dart';
import 'package:buyit/models/register_response.dart';

class AuthServices  {
  static var client = http.Client();

  static register ({required userName,email,password,mobile}) async {
    var response = await client.post
      (Uri.parse('$baseUrl/register'),
      headers: {'Content-Type' : 'multipart/form-data; boundary=<calculated when request is sent>'},
      body: jsonEncode(<String, String> {'name' : userName, 'email' : email, 'password' : password, 'mobile' : mobile }),
    );

    if(response.statusCode == 200){
      var srtingObject = response.body;
      var registerRequest = registerRequestFromJson(srtingObject);
      return registerRequest;
 }
 }

  static login ({required email,password,device_token,lang}) async {
    var response = await client.post
      (Uri.parse('$baseUrl/login'),
      headers: {'Content-Type' : 'multipart/form-data; boundary=<calculated when request is sent>'},
      body: jsonEncode(<String, String> {'email' : email,'password' : password,'device_token' : device_token,'lang' : lang }),
    );

    if(response.statusCode == 200){
      var srtingObject = response.body;
      var loginRequest = loginResponseFromJson(srtingObject);
      return loginRequest;
    }
  }
}



































