// To parse this JSON data, do
//
//     final productModels = productModelsFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

List<ProductModels> productModelsFromJson(String str) =>
    List<ProductModels>.from(
        json.decode(str)['data'].map((x) => ProductModels.fromJson(x)));

String productModelsToJson(List<ProductModels> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModels {
  ProductModels({
    this.id,
    this.categoryId,
    this.shopId,
    this.vendorId,
   required this.name,
    this.description,
    this.price,
    this.quantity,
    this.modalNumber,
    this.department,
    this.coverImg,
    required this.slug,
    this.status,
    this.date,
    this.size,
    this.color,
    this.createdAt,
    this.updatedAt,
    required this.productImage,
  });

  int? id;
  int? categoryId;
  dynamic shopId;
  dynamic vendorId;
   String name;
  String? description;
  int? price;
  int? quantity;
  String? modalNumber;
  String? department;
  String? coverImg;
 List  slug;
  int? status;
  String? date;
  List<String>? size;
  List<String>? color;
  DateTime? createdAt;
  dynamic updatedAt;
  List<ProductImage> productImage;

  factory ProductModels.fromJson(Map<String, dynamic> json) => ProductModels(
    id: json["id"],
    categoryId: json["categoryId"],
    shopId: json["shopId"],
    vendorId: json["vendorId"],
    name: json["name"],
    description: json["description"],
    price: json["price"],
    quantity: json["quantity"],
    modalNumber: json["modal_number"],
    department: json["department"],
    coverImg: json["cover_img"],
    slug: json["slug"],
    status: json["status"],
    date: json["date"],
    size: List<String>.from(json["size"].map((x) => x)),
    color: List<String>.from(json["color"].map((x) => x)),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"],
    productImage: List<ProductImage>.from(json["product_image"].map((x) => ProductImage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "categoryId": categoryId,
    "shopId": shopId,
    "vendorId": vendorId,
    "name": name,
    "description": description,
    "price": price,
    "quantity": quantity,
    "modal_number": modalNumber,
    "department": department,
    "cover_img": coverImg,
    "slug": slug,
    "status": status,
    "date": date,
    "size": List<dynamic>.from(size!.map((x) => x)),
    "color": List<dynamic>.from(color!.map((x) => x)),
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt,
   // "product_image": List<dynamic>.from(productImage!.map((x) => x.toJson())),
  };
}

class ProductImage {
  ProductImage({
    this.id,
    this.productId,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? productId;
  String? image;
  dynamic createdAt;
  dynamic updatedAt;

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
    id: json["id"],
    productId: json["productId"],
    image: json["image"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "productId": productId,
    "image": image,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
