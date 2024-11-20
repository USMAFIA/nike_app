import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CommentResponseModel {
  String? userName;
  String? comment;
  String? time;
  String? userImage;
  CommentResponseModel({
    this.userName,
    this.comment,
    this.time,
    this.userImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'comment': comment,
      'time': time,
      'userImage': userImage,
    };
  }

  factory CommentResponseModel.fromMap(Map<String, dynamic> map) {
    return CommentResponseModel(
      userName: map['userName'] != null ? map['userName'] as String : null,
      comment: map['comment'] != null ? map['comment'] as String : null,
      time: map['time'] != null ? map['time'] as String : null,
      userImage: map['userImage'] != null ? map['userImage'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CommentResponseModel.fromJson(String source) =>
      CommentResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
