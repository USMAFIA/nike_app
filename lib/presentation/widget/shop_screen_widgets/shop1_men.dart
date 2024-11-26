import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class Shop1Men extends StatefulWidget {
  const Shop1Men({super.key});

  @override
  State<Shop1Men> createState() => _Shop1MenState();
}

class _Shop1MenState extends State<Shop1Men> {
  final List<Map<String, String>> scrollItems = [
    {'title': 'Best Sellers', 'image': 'assets/images/shop_scroll_img1.png'},
    {
      'title': 'Featured in Nike Air',
      'image': 'assets/images/shop_scroll_img2.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HelText(
                  text: 'Must-Haves, Best Sellers & More',
                  size: 20,
                ),
                const SizedBox(
                  height: 28,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(scrollItems.length, (index) {
                      final item = scrollItems[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 5, bottom: 20),
                            child: Container(
                              height: 216,
                              width: 216,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(item['image'] ??
                                          'https://www.mbilalm.com/blog/wp-content/uploads/2022/11/Beautiful-Clock-Tower-Chowk-Ghanta-Ghar-Multan-410x512.jpg?ver=1.0'))),
                            ),
                          ),
                          HelText(
                            text: item['title'] ?? 'no Title',
                            size: 18,
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,bottom: 3),
                    child: Container(
                      height: 130,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/discover3.png'),),
                      ),
                      child: const Center(
                        child: HelText(
                          text: 'New & Featured',
                          size: 28,
                          color: AppColors.w,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: 130,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/shop1_img.png'),),
                      ),
                      child: const Center(
                        child: HelText(
                          text: 'New & Featured',
                          size: 28,
                          color: AppColors.w,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

