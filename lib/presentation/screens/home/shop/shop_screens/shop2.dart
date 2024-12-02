import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class Shop2 extends StatefulWidget {
  final PageController controller;
  const Shop2({super.key, required this.controller});
  @override
  State<Shop2> createState() => _Shop2State();
}

class _Shop2State extends State<Shop2> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> newArrivals = [
      {
        'image': 'assets/images/discover2.png',
        'title': 'Air Jordan XXXVI',
        'price': 'US\$185',
      },
      {
        'image': 'assets/images/discover2.png',
        'title': 'Air Jordan XXXVI',
        'price': 'US\$185',
      },
    ];
    final List<Map<String, String>> shopCollection = [
      {
        'image': 'assets/images/new_life.png',
        'title': 'Nike life',
        'price': 'US\$180'
      },
      {
        'image': 'assets/images/new_life.png',
        'title': 'Nike life',
        'price': 'US\$120'
      }
    ];
    final List<Map<String, String>> shopInterests = [
      {
        'image': 'assets/images/shop2_running.png',
        'title': 'Running',
        'price': ''
      },
      {
        'image': 'assets/images/shop2_basketball.png',
        'title': 'Basket Ball',
        'price': ''
      }
    ];
    final List<Map<String, String>> recommendedList = [
      {'image': 'assets/images/recommended1.png', 'title': '', 'price': ''},
      {'image': 'assets/images/recommended2.png', 'title': '', 'price': ''}
    ];
    final List<List<Map<String, String>>> shop2Items = [
      newArrivals,
      shopCollection,
      shopInterests,
      recommendedList,
    ];
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              title: const HelText(text: 'Shop'),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                    onTap: (){
                      widget.controller.animateToPage(2, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                    },
                    child: const Icon(
                      Icons.search_sharp,
                      size: 40,
                    ),
                  ),
                ),
              ]),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(shop2Items.length, (index) {
                  final currentList = shop2Items[index];
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 342,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: HelText(
                                    text: index == 0
                                        ? 'New Arrivals'
                                        : index == 1
                                            ? 'Shop by Collection'
                                            : index == 2
                                                ? 'Shop My Interest'
                                                : index == 3
                                                    ? 'Recommended For You'
                                                    : '--Nothing here--',
                                    size: 22,
                                  ),
                                ),
                                HelText(
                                  text: index == 0
                                      ? 'View All'
                                      : index == 2
                                          ? 'Add interest'
                                          : '',
                                  color: AppColors.gr6,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: currentList.map((innerList) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Container(
                                        width: 246,
                                        height: 246,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                innerList['image'] ??
                                                    'assets/images/default.png'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      child: HelText(
                                        text: innerList['title'] ?? '-No Title-',
                                        size: 20,
                                      ),
                                    ),
                                    HelText(
                                      text:
                                          innerList['price'] ?? '---No price---',
                                      color: AppColors.gr6,
                                      size: 15,
                                    ),
                                  ],
                                );
                              }).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
