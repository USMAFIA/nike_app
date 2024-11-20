import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import '../../../widget/hel_text.dart';

class Home1 extends StatefulWidget {
  final PageController controller;
  const Home1({super.key, required this.controller});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, left: 30),
                child: HelText(text: 'Discover', size: 29),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 30, bottom: 30),
                child: HelText(
                  color: AppColors.gr6,
                  text: 'Tuesday, 3 May',
                  size: 15,
                ),
              ),
              InkWell(
                onTap: () {
                  widget.controller.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: SizedBox(
                  height: 520,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/discover1.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(
                height: 562,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HelText(text: "What's new", size: 20),
                      HelText(
                        text: 'The latest arrivals from\nNike',
                        color: AppColors.gr6,
                        size: 28,
                      ),
                      const SizedBox(height: 17),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(newArrivals.length, (index) {
                            final item = newArrivals[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: (){
                                      widget.controller.animateToPage(
                                        1,
                                        duration: const Duration(milliseconds: 300),
                                        curve: Curves.easeInOut,
                                      );
                                    },
                                    child: SizedBox(
                                      height: 314,
                                      width: 314,
                                      child: Image.asset(item['image']!),
                                    ),
                                  ),
                                  HelText(text: item['title']!, size: 18),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: HelText(
                                      text: item['price']!,
                                      size: 18,
                                      color: AppColors.gr6,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  widget.controller.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
                child: SizedBox(
                  height: 360,
                  width: double.infinity,
                  child: Image.asset('assets/images/discover3.png', fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
