// To parse this JSON data, do
//
//     final registerParms = registerParmsFromJson(jsonString);

import 'dart:convert';

RegisterParms registerParmsFromJson(String str) => RegisterParms.fromJson(json.decode(str));

String registerParmsToJson(RegisterParms data) => json.encode(data.toJson());

class RegisterParms {
  RegisterParms({
    this.name,
    this.email,
    this.mobile,
    this.password,
  });

  String? name;
  String? email;
  String? mobile;
  String? password;

  factory RegisterParms.fromJson(Map<String, dynamic> json) => RegisterParms(
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
