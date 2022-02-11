// To parse this JSON data, do
//
//     final updateProfile = updateProfileFromJson(jsonString);

import 'dart:convert';

UpdateProfile updateProfileFromJson(String str) => UpdateProfile.fromJson(json.decode(str));

String updateProfileToJson(UpdateProfile data) => json.encode(data.toJson());

class UpdateProfile {
  UpdateProfile({
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
  int? countryId;
  int? cityId;
  dynamic? stateId;
  String? name;
  String? email;
  dynamic? dateOfBirth;
  String? mobile;
  String? photo;
  String? gender;
  String? detail;
  int? status;
  String? type;
  int? isActivated;
  String? token;
  String? deviceToken;
  dynamic? createdAt;
  DateTime? updatedAt;
  City? country;
  City? city;

  factory UpdateProfile.fromJson(Map<String, dynamic> json) => UpdateProfile(
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
    createdAt: json["created_at"],
    updatedAt: DateTime.parse(json["updated_at"]),
    country: City.fromJson(json["country"]),
    city: City.fromJson(json["city"]),
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
    "created_at": createdAt,
    "updated_at": updatedAt!.toIso8601String(),
    "country": country!.toJson(),
    "city": city!.toJson(),
  };
}

class City {
  City({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory City.fromJson(Map<String, dynamic> json) => City(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}
