import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first

class BlogResponseModel {
  String? imageUrl;
  String? title;
  String? authorImage;
  String? authorName;
  String? description;
  BlogResponseModel({
    this.imageUrl,
    this.title,
    this.authorImage,
    this.authorName,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'title': title,
      'authorImage': authorImage,
      'authorName': authorName,
      'description': description,
    };
  }

  factory BlogResponseModel.fromMap(Map<String, dynamic> map) {
    return BlogResponseModel(
      imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
      title: map['title'] != null ? map['title'] as String : null,
      authorImage:
          map['authorImage'] != null ? map['authorImage'] as String : null,
      authorName:
          map['authorName'] != null ? map['authorName'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
    );
  }
  // factory BlogResponseModel.fromSnap(DocumentSnapshot snap) {    for later use
  //   var map = snap.data() as Map<String, dynamic>;
  //   return BlogResponseModel(
  //     imageUrl: map['imageUrl'] != null ? map['imageUrl'] as String : null,
  //     title: map['title'] != null ? map['title'] as String : null,
  //     authorImage: map['authorImage'] != null ? map['authorImage'] as String : null,
  //     authorName: map['authorName'] != null ? map['authorName'] as String : null,
  //     description: map['description'] != null ? map['description'] as String : null,
  //   );
  // }

  String toJson() => json.encode(toMap());

  factory BlogResponseModel.fromJson(String source) =>
      BlogResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
