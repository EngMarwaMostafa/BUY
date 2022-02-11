// To parse this JSON data, do
//
//     final addressModel = addressModelFromJson(jsonString);

import 'dart:convert';

AddressModel addressModelFromJson(String str) => AddressModel.fromJson(json.decode(str));

String addressModelToJson(AddressModel data) => json.encode(data.toJson());

class AddressModel {
  AddressModel({
    this.id,
    this.userId,
    this.addressName,
    this.fullName,
    this.email,
    this.phone,
    this.city,
    this.state,
    this.fullAddress,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  int? id;
  int? userId;
  String? addressName;
  String? fullName;
  String? email;
  String? phone;
  String? city;
  String? state;
  String? fullAddress;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
    id: json["id"],
    userId: json["userId"],
    addressName: json["address_name"],
    fullName: json["full_name"],
    email: json["email"],
    phone: json["phone"],
    city: json["city"],
    state: json["state"],
    fullAddress: json["full_address"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: DateTime.parse(json["deleted_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "address_name": addressName,
    "full_name": fullName,
    "email": email,
    "phone": phone,
    "city": city,
    "state": state,
    "full_address": fullAddress,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "deleted_at": deletedAt!.toIso8601String(),
  };
}
