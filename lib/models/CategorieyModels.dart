// To parse this JSON data, do
//
//     final categoryModels = categoryModelsFromJson(jsonString);

import 'dart:convert';

CategoryModels categoryModelsFromJson(String str) => CategoryModels.fromJson(json.decode(str));

String categoryModelsToJson(CategoryModels data) => json.encode(data.toJson());

class CategoryModels {
  CategoryModels({
    this.id,
    this.icon,
    this.image,
    this.slug,
    this.status,
    this.top,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.imge,
  });

  int? id;
  String? icon;
  String? image;
  String? slug;
  bool? status;
  int? top;
  dynamic createdAt;
  dynamic updatedAt;
  String? title;
  String? imge;

  factory CategoryModels.fromJson(Map<String, dynamic> json) => CategoryModels(
    id: json["id"],
    icon: json["icon"],
    image: json["image"],
    slug: json["slug"],
    status: json["status"],
    top: json["top"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    title: json["title"],
    imge: json["imge"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "icon": icon,
    "image": image,
    "slug": slug,
    "status": status,
    "top": top,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "title": title,
    "imge": imge,
  };
}


/*
  CategoryServices categoryServices =  CategoryServices();
  var category = CategoryModels().obs;
  var isLoading = true.obs;

 @override
  void onInit() {
   getCategory();
    super.onInit();
  }

  void getCategory() async{
   try{
     isLoading(true);
     var categories = await CategoryServices.getCategory();
     if(categories != null){
     category.value =categories ;

     }
   }finally{
     isLoading(false);
   }
  }
}
 */
