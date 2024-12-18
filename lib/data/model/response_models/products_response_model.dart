import 'dart:convert';

class ProductsResponseModel {
  String? imageUrl;
  String? title;
  String? productType;
  String? whichColor;
  String? price;
  String? type;

  ProductsResponseModel({
    this.imageUrl,
    this.title,
    this.productType,
    this.whichColor,
    this.price,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'title': title,
      'productType': productType,
      'whichColor': whichColor,
      'price': price,
      'type': type,
    };
  }

  factory ProductsResponseModel.fromMap(Map<String, dynamic> map) {
    return ProductsResponseModel(
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      productType: map['productType'] != null ? map['productType'] as String : null,
      whichColor: map['whichColor'] != null ? map['whichColor'] as String : null,
      price: map['price'] != null ? map['price'] as String : null,
      type: map['type'] != null ? map['type'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductsResponseModel.fromJson(String source) =>
      ProductsResponseModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}
