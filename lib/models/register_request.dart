// To parse this JSON data, do
//
//     final registerParms = registerParmsFromJson(jsonString);

import 'dart:convert';

RegisterRequest registerRequestFromJson(String str) => RegisterRequest.fromJson(json.decode(str));

String registerRequestToJson(RegisterRequest data) => json.encode(data.toJson());

class RegisterRequest {
  RegisterRequest({
    this.name,
    this.email,
    this.mobile,
    this.password,
  });

  String? name;
  String? email;
  String? mobile;
  String? password;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) => RegisterRequest(
    name: json["name"],
    email: json["email"],
    mobile: json["mobile"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "mobile": mobile,
    "password": password,
  };
}
