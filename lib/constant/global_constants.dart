import 'package:flutter/cupertino.dart';
import 'package:nike_app/data/model/response_models/blog_response_model.dart';
import 'package:nike_app/presentation/screens/home/home_screens/comments_screen.dart';
import 'package:nike_app/presentation/screens/home/home_screens/home7.dart';
import '../data/model/response_models/comment_response_model.dart';
import '../data/model/response_models/products_response_model.dart';
import '../presentation/screens/home/home.dart';
import '../presentation/screens/home/home_screens/home1.dart';
import '../presentation/screens/home/home_screens/home2.dart';
import '../presentation/screens/home/home_screens/home3.dart';
import '../presentation/screens/home/shop/shop.dart';
import '../presentation/screens/home/shop/shop_screens/shop1.dart';
import '../presentation/screens/home/shop/shop_screens/shop2.dart';
import '../presentation/widget/home_screen_widgets/grid_view_products.dart';
import '../presentation/widget/shop_screen_widgets/shop1_men.dart';

class GlobalConstants {
  static mainPageItems(BuildContext context) {
    return [
      const Home(),
      const Shop(),
      const Text('---------------------------------fav---------------------------------'),
      const Text('---------------------------------bag---------------------------------'),
      const Text('---------------------------------profile---------------------------------'),
    ];
  }
  static homeItems(BuildContext context,PageController controller, BlogResponseModel blog){
    List<CommentResponseModel> comment = [
      CommentResponseModel(
        userImage: '',
        userName: 'Bolor Bathkuyag',
        comment: 'Wow',
        time: '53 minutes ago',
      ),
      CommentResponseModel(
        userImage: '',
        userName: 'Maineski Bandz',
        comment: '😂',
        time: '7 hours ago',
      ),
      CommentResponseModel(
        userImage: '',
        userName: 'Wyatt Card',
        comment: 'Hoke me up with a head band',
        time: '1 day ago',
      ),
    ];
    return [
      Home1(controller: controller,),
      Home2(controller: controller,),
      Home3(controller: controller,),
      const Text('---------------------------------4---------------------------------'),
      const Text('---------------------------------5---------------------------------'),
      const Text('---------------------------------6---------------------------------'),
      Home7(controller: controller, blog: blog,),
       CommentsScreen(controller: controller,comment:comment),
    ];
  }
  static home2Items(BuildContext context,List<ProductsResponseModel> products) {
    return [
      GridViewProducts(products: products,),
      const Text('---------------------------------2---------------------------------'),
      const Text('---------------------------------3---------------------------------'),
    ];
  }
  static shop1Items(BuildContext context,PageController controller) {
    return [
      Shop1Men(controller: controller,),
      const Text('---------------------------------2---------------------------------'),
      const Text('---------------------------------3---------------------------------'),
    ];
  }
  static shopItems(BuildContext context,PageController controller,) {
    return [
      Shop1(controller: controller),
      Shop2(controller: controller),
      const Text('---------------------------------3---------------------------------'),
      const Text('---------------------------------4---------------------------------'),
      const Text('---------------------------------5---------------------------------'),
      const Text('---------------------------------6---------------------------------'),
      const Text('---------------------------------7---------------------------------'),
    ];
  }
}