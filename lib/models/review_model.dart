// To parse this JSON data, do
//
//     final reviewModel = reviewModelFromJson(jsonString);

import 'dart:convert';

List<ReviewModel> reviewModelFromJson(String str) => List<ReviewModel>.from(json.decode(str).map((x) => ReviewModel.fromJson(x)));

String reviewModelToJson(List<ReviewModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ReviewModel {
  ReviewModel({
    this.id,
    this.shopId,
    this.buyerId,
    this.productId,
    this.comment,
    this.rate,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.buyer,
  });

  int? id;
  dynamic? shopId;
  int? buyerId;
  int? productId;
  String? comment;
  String? rate;
  String? date;
  DateTime? createdAt;
  DateTime? updatedAt;
  Buyer? buyer;

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
    id: json["id"],
    shopId: json["shopId"],
    buyerId: json["buyerId"],
    productId: json["productId"],
    comment: json["comment"],
    rate: json["rate"],
    date: json["date"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    buyer: Buyer.fromJson(json["buyer"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "shopId": shopId,
    "buyerId": buyerId,
    "productId": productId,
    "comment": comment,
    "rate": rate,
    "date": date,
    "created_at": createdAt!.toIso8601String(),
    "updated_at": updatedAt!.toIso8601String(),
    "buyer": buyer!.toJson(),
  };
}

class Buyer {
  Buyer({
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
  });

  int? id;
  int? countryId;
  int? cityId;
  dynamic? stateId;
  Name? name;
  Email? email;
  dynamic? dateOfBirth;
  String? mobile;
  String? photo;
  Gender? gender;
  Detail? detail;
  int? status;
  Type? type;
  int? isActivated;
  String? token;
  DeviceToken? deviceToken;
  dynamic? createdAt;
  DateTime? updatedAt;

  factory Buyer.fromJson(Map<String, dynamic> json) => Buyer(
    id: json["id"],
    countryId: json["countryId"],
    cityId: json["cityId"],
    stateId: json["stateID"],
    name: nameValues.map[json["name"]],
    email: emailValues.map[json["email"]],
    dateOfBirth: json["dateOfBirth"],
    mobile: json["mobile"],
    photo: json["photo"],
    gender: genderValues.map[json["gender"]],
    detail: detailValues.map[json["detail"]],
    status: json["status"],
    type: typeValues.map[json["type"]],
    isActivated: json["is_activated"],
    token: json["token"],
    deviceToken: deviceTokenValues.map[json["device_token"]],
    createdAt: json["created_at"],
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "countryId": countryId,
    "cityId": cityId,
    "stateID": stateId,
    "name": nameValues.reverse[name],
    "email": emailValues.reverse[email],
    "dateOfBirth": dateOfBirth,
    "mobile": mobile,
    "photo": photo,
    "gender": genderValues.reverse[gender],
    "detail": detailValues.reverse[detail],
    "status": status,
    "type": typeValues.reverse[type],
    "is_activated": isActivated,
    "token": token,
    "device_token": deviceTokenValues.reverse[deviceToken],
    "created_at": createdAt,
    "updated_at": updatedAt!.toIso8601String(),
  };
}

enum Detail { KBJH }

final detailValues = EnumValues({
  "kbjh": Detail.KBJH
});

enum DeviceToken { FWFWFRW }

final deviceTokenValues = EnumValues({
  "fwfwfrw": DeviceToken.FWFWFRW
});

enum Email { USER_USER_COM }

final emailValues = EnumValues({
  "user@user.com": Email.USER_USER_COM
});

enum Gender { MALE }

final genderValues = EnumValues({
  "male": Gender.MALE
});

enum Name { SAID }

final nameValues = EnumValues({
  "said": Name.SAID
});

enum Type { BUYER }

final typeValues = EnumValues({
  "buyer": Type.BUYER
});

class EnumValues<T> {
  late Map<String,T> map;
  late Map<T, String> reverseMap;

 EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
