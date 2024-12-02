import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/black_button.dart';

import '../../../../widget/hel_text.dart';

class ProductDetailScreen1 extends StatefulWidget {
  final PageController controller;
  const ProductDetailScreen1({super.key, required this.controller});

  @override
  State<ProductDetailScreen1> createState() => _ProductDetailScreen1State();
}

class _ProductDetailScreen1State extends State<ProductDetailScreen1> {
  @override
  Widget build(BuildContext context) {
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
              title: const HelText(
                text: 'Nike Everyday Plus Cush...',
                size: 16,
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: InkWell(
                    onTap: () {
                      widget.controller.animateToPage(2,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut);
                    },
                    child: const Icon(
                      Icons.search_sharp,
                      size: 40,
                    ),
                  ),
                ),
              ]),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 470,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/product_image1.png')),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/product_image2.png')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2),
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/product_image3.png')),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Container(
                            height: 170,
                            width: 170,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/images/product_image4.png')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 24, vertical: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Training Crew Socks',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        const HelText(text: 'Nike Everyday Plus Cushioned'),
                        const SizedBox(
                          height: 10,
                        ),
                        const HelText(
                          text: 'US\$10',
                          size: 21,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'The Nike Everyday Plus Cushioned Socks bring comfort to your workout with extra cushioning under the heel and forefoot and a snug, supportive arch band. Sweat-wicking power and breathability up top help keep your feet dry and cool to help push you through that extra set.',
                          style: TextStyle(fontSize: 17),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          ' •  Shown: Multi-Color',
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          ' •  Style: SX6897-965',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        InkWell(
                          onTap: (){
                            widget.controller.animateToPage(6,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: Text(
                            'View Product Details',
                            style: TextStyle(
                              fontSize: 20,
                              color: AppColors.gr6,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 66,
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                    width: double.infinity,
                                    height: 540,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(
                                          height: 50,
                                        ),
                                        Row(
                                          children: [
                                            const Expanded(
                                              child: Text(
                                                '   Select size to see options',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w800),
                                              ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Icon(
                                                  Icons.close_rounded,
                                                  size: 28,
                                                )),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Divider(
                                          color: AppColors.gr3,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          '   S (3Y-5Y / W 4-6)',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Divider(
                                          color: AppColors.gr3,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          '   M (5Y-7Y / W 6-10 / M 608)',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Divider(
                                          color: AppColors.gr3,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Text(
                                          '   L (W 10-13 / M 8-12)',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: const BlackButton(
                            text: 'Select Size ↓',
                            color: AppColors.w,
                            height: 60,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                Future.delayed(Duration(seconds: 2), () {
                                  Navigator.of(context).pop();
                                });
                                return Center(
                                  child: Container(
                                    width: 230,
                                    height: 230,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(width: 2,color: AppColors.w),
                                          ),
                                          child: Center(child: Icon(Icons.done,color: AppColors.w,size: 70,),),
                                        ),
                                        SizedBox(height: 27),
                                        Text(
                                          'Added to Bag',
                                          style: TextStyle(fontSize: 33, color: AppColors.w),
                                        ),
                                        SizedBox(height: 7),
                                        Text(
                                          '(1 item Totel)',
                                          style: TextStyle(fontSize: 20, color: AppColors.w),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: const BlackButton(
                            text: 'Add to Bag',
                            height: 60,
                          ),
                        ),

                        const SizedBox(
                          height: 7,
                        ),
                        const BlackButton(
                          text: 'Favourite ♡',
                          color: AppColors.w,
                          height: 60,
                        ),
                        const SizedBox(
                          height: 56,
                        ),
                        Container(
                          height: 140,
                          width: double.infinity,
                          color: AppColors.gr1,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  'Get Your Gear Faster',
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Look for store pick up at checkout',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 28,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 4,
                                      width: 18,
                                      color: AppColors.gr3,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      height: 4,
                                      width: 18,
                                      color: AppColors.gr3,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Container(
                                      height: 4,
                                      width: 18,
                                      color: AppColors.bk,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                      height: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          'Delivery',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Arrives Wed, 11 May',
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              children: [
                                Text(
                                  'to Fri, 13 May ',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  'Edit Location',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          'Plck-Up',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Text(
                          'Find a Store',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(
                          height: 64,
                        ),
                        Divider(
                          color: AppColors.gr3,
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Size and Fit',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        Divider(
                          color: AppColors.gr3,
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: (){
                                  widget.controller.animateToPage(7,
                                      duration: const Duration(milliseconds: 300),
                                      curve: Curves.easeInOut);
                                },
                                child: const Text(
                                  'Reviews (20)   ',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            SizedBox(
                              width: 16,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        Divider(
                          color: AppColors.gr3,
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Text(
                                'More Information',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 30,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 37,
                        ),
                        Divider(
                          color: AppColors.gr3,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          'You Mignt Also Like',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 246,
                                    width: 246,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product_image5.png')),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text(
                                    'Nike Everyday Max Curshioned',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'US\$24',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.gr6),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 246,
                                    width: 246,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/product_image6.png')),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Text(
                                    '   Nike Dunk Low',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '   US\$55',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.gr6),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
