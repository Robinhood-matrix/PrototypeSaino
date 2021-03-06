import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product(
      {required this.id,
      required this.name,
      required this.description,
      required this.image,
      required this.price,
      required this.categoryId,
     });

  String id;
  String name;
  String description;
  String image;
  String price;
  String categoryId;
 

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        image: json["image"],
        price: json["price"],
      
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "image": image,
        "price": price,
        "category_id": categoryId,
       
      };
}
