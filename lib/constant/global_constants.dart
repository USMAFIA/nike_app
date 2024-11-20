import 'package:flutter/cupertino.dart';
import 'package:nike_app/data/model/response_models/blog_response_model.dart';
import 'package:nike_app/presentation/screens/home/home_screens/home7.dart';
import '../presentation/screens/home/home.dart';
import '../presentation/screens/home/home_screens/home1.dart';
import '../presentation/screens/home/home_screens/home2.dart';
import '../presentation/screens/home/shop_screens/shop1.dart';

class GlobalConstants {
  static mainPageItems(BuildContext context) {
    return [
      const Home(),
      const Shop1(),
      const Text('---------------------------------fav---------------------------------'),
      const Text('---------------------------------bag---------------------------------'),
      const Text('---------------------------------profile---------------------------------'),
    ];
  }
  static homeItems(BuildContext context,PageController controller, BlogResponseModel blog){
    return [
      Home1(controller: controller,),
      Home2(controller: controller,),
      const Text('---------------------------------3---------------------------------'),
      const Text('---------------------------------4---------------------------------'),
      const Text('---------------------------------5---------------------------------'),
      const Text('---------------------------------6---------------------------------'),
      Home7(controller: controller, blog: blog,),
    ];
  }
  static home2Items(BuildContext context) {
    return [
      const Text('---------------------------------1---------------------------------'),
      const Text('---------------------------------2---------------------------------'),
      const Text('---------------------------------3---------------------------------'),
    ];
  }
}