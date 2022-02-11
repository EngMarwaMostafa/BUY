// To parse this JSON data, do
//
//     final registerResponse = registerResponseFromJson(jsonString);

import 'dart:convert';

RegisterResponse registerResponseFromJson(String str) => RegisterResponse.fromJson(json.decode(str));

class RegisterResponse {
  String? token;
  int? id;

  RegisterResponse({this.token, this.id});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    id = json['id'];
  }

}