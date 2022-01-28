// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.products,
  });

  List<Product> products;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    products: List<Product>.from(json["Products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Product {
  Product({
    required this.id,
    required this.categoryId,
    this.shopId,
    this.vendorId,
    required this.name,
    required this.description,
    required this.price,
    this.quantity,
    this.modalNumber,
    this.department,
    this.coverImg,
    this.slug,
    this.status,
    this.date,
    this.size,
    this.color,
    this.createdAt,
    this.updatedAt,
    this.productImage,
  });

  int id;
  int categoryId;
  dynamic shopId;
  dynamic vendorId;
  String name;
  String description;
  int price;
  int? quantity;
  String? modalNumber;
  String? department;
  String? coverImg;
  String? slug;
  int? status;
  String? date;
  List<String>? size;
  List<String>? color;
  DateTime? createdAt;
  dynamic updatedAt;
  List<ProductImage>? productImage;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
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
    "product_image": List<dynamic>.from(productImage!.map((x) => x.toJson())),
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
