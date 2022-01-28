import 'dart:convert';

import 'package:buyit/models/login.dart';
import 'package:http/http.dart' as http;
import 'package:buyit/models/register_parms.dart';
import 'package:buyit/models/register_response.dart';

class UserRepository{
  Future<RegisterResponse> registerRequest(RegisterParms parms)async{
    http.Response response =await  http.post(Uri.parse('https://findfamily.net/eshop/api/buyers/register'),
      body: parms.toJson(),
    );
    return RegisterResponse.fromJson(jsonDecode(response.body));
  }

  Future<Login> loginRequest(Login login)async{
    http.Response response = await http.post(Uri.parse('https://findfamily.net/eshop/api/buyers/login'),
      body: login.toJson(),
    );
    return Login.fromJson(jsonDecode(response.body));
  }
}
