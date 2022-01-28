// To parse this JSON data, do
//
//     final productDetailsModels = productDetailsModelsFromJson(jsonString);

import 'dart:convert';
/*
ProductDetailsModels productDetailsModelsFromJson(String str) => ProductDetailsModels.fromJson(json.decode(str));

String productDetailsModelsToJson(ProductDetailsModels data) => json.encode(data.toJson());

class ProductDetailsModels {
  ProductDetailsModels({
    required this.id,
    required this.categoryId,
    required this.shopId,
    required this.vendorId,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.modalNumber,
    required this.department,
    required this.coverImg,
    required this.slug,
    required this.status,
    required this.date,
    required this.size,
    required this.color,
    required this.createdAt,
    this.updatedAt,
    required this.productImage,
  });

  int id;
  int categoryId;
  int shopId;
  int vendorId;
  String name;
  String description;
  int price;
  int quantity;
  String modalNumber;
  String department;
  String coverImg;
  String slug;
  int status;
  DateTime date;
  List<String> size;
  List<String> color;
  DateTime createdAt;
  dynamic updatedAt;
  List<ProductImage> productImage;

  factory ProductDetailsModels.fromJson(Map<String, dynamic> json) => ProductDetailsModels(
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
    date: DateTime.parse(json["date"]),
    size: List<String>.from(json["size"].map((x) => x)),
    color: List<String>.from(json["color"].map((x) => x)),
    createdAt: DateTime.parse(json["created_at"]),
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
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "size": List<dynamic>.from(size.map((x) => x)),
    "color": List<dynamic>.from(color.map((x) => x)),
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt,
    "product_image": List<dynamic>.from(productImage.map((x) => x.toJson())),
  };
}

class ProductImage {
  ProductImage({
    required this.id,
    required this.productId,
    required this.image,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int productId;
  String image;
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
*/