// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    this.status,
    this.msg,
    this.data,
  });

  bool? status;
  String? msg;
  Data? data;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
    status: json["status"],
    msg: json["msg"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": data?.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.countryId,
    this.cityId,
    this.stateId,
    this.name,
    this.email,
    this.dateOfBirth,
    this.mobile,
    this.photo,
    this.gender,
    this.detail,
    this.status,
    this.type,
    this.isActivated,
    this.token,
    this.deviceToken,
    this.createdAt,
    this.updatedAt,
    this.country,
    this.city,
  });

  int? id;
  dynamic countryId;
  dynamic cityId;
  dynamic stateId;
  String? name;
  String? email;
  dynamic dateOfBirth;
  String? mobile;
  String? photo;
  dynamic gender;
  dynamic detail;
  int? status;
  String? type;
  int? isActivated;
  String? token;
  String? deviceToken;
  DateTime? createdAt;
  DateTime? updatedAt;
  Country? country;
  dynamic city;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    countryId: json["countryId"],
    cityId: json["cityId"],
    stateId: json["stateID"],
    name: json["name"],
    email: json["email"],
    dateOfBirth: json["dateOfBirth"],
    mobile: json["mobile"],
    photo: json["photo"],
    gender: json["gender"],
    detail: json["detail"],
    status: json["status"],
    type: json["type"],
    isActivated: json["is_activated"],
    token: json["token"],
    deviceToken: json["device_token"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    country: Country.fromJson(json["country"]),
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "countryId": countryId,
    "cityId": cityId,
    "stateID": stateId,
    "name": name,
    "email": email,
    "dateOfBirth": dateOfBirth,
    "mobile": mobile,
    "photo": photo,
    "gender": gender,
    "detail": detail,
    "status": status,
    "type": type,
    "is_activated": isActivated,
    "token": token,
    "device_token": deviceToken,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "country": country?.toJson(),
    "city": city,
  };
}

class Country {
  Country({
    this.id,
    this.nameAr,
    this.nameEn,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? nameAr;
  String? nameEn;
  dynamic createdAt;
  dynamic updatedAt;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
    id: json["id"],
    nameAr: json["name_ar"],
    nameEn: json["name_en"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name_ar": nameAr,
    "name_en": nameEn,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
