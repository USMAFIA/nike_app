import 'package:flutter/material.dart';

import '../presentation/screens/home/home_screens/home1.dart';

class GlobalConstants {
  static homeItems(BuildContext context) {
    return [
      const Home1(),
      const Text('---------------------------------shop---------------------------------'),
      const Text('---------------------------------fav---------------------------------'),
      const Text('---------------------------------bag---------------------------------'),
      const Text('---------------------------------profile---------------------------------'),
    ];
  }
}