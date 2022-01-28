// To parse this JSON data, do
//
//     final categoryModels = categoryModelsFromJson(jsonString);

import 'dart:convert';

List<CategoryModels> categoryModelsFromJson(String str) => List<CategoryModels>.from(json.decode(str).map((x) => CategoryModels.fromJson(x)));

String categoryModelsToJson(List<CategoryModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CategoryModels {
  CategoryModels({
    required this.id,
    required this.title,
    required this.icon,
    required this.image,
    required this.slug,
    required this.status,
    required this.top,
    this.createdAt,
    this.updatedAt,
    required this.imge,
  });

  int id;
  String title;
  String icon;
  String image;
  String slug;
  int status;
  int top;
  dynamic createdAt;
  dynamic updatedAt;
  String imge;

  factory CategoryModels.fromJson(Map<String, dynamic> json) => CategoryModels(
    id: json["id"],
    title: json["title"],
    icon: json["icon"],
    image: json["image"],
    slug: json["slug"],
    status: json["status"],
    top: json["top"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    imge: json["imge"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "icon": icon,
    "image": image,
    "slug": slug,
    "status": status,
    "top": top,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "imge": imge,
  };
}
