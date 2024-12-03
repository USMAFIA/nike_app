import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/black_button.dart';
import '../../../widget/bag_screen_widgets/widget2_bag_screen.dart';
import '../../../widget/bag_screen_widgets/widget3_bag_screen.dart';

class BagScreen1 extends StatefulWidget {
  final PageController controller;
  const BagScreen1({super.key, required this.controller});

  @override
  State<BagScreen1> createState() => _BagScreen1State();
}

class _BagScreen1State extends State<BagScreen1> {
  int selectedQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Bag',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.gr1,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Not in a Hurry',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 23),
                        ),
                        const Text(
                          'Select No Rush Shipping at checkout.',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
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
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 210,
                            width: 210,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/product_image1.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Nike Everyday Plus\nCushioned',
                                style: TextStyle(
                                    fontSize: 15.8,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Training Ankle Socks (6\nParis)\nSize L (W 10-13 / M\n8-12)',
                                style: TextStyle(
                                    fontSize: 13.7,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: AppColors.w,
                              builder: (context) => Widget3BagScreen(selectedQuantity: selectedQuantity,),
                            );
                          },
                          child: const Text(
                            'Qty 1',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_up,
                        size: 34,
                      ),
                      const Expanded(child: SizedBox()),
                      const Text(
                        'US\$10.00',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Delivery',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const Text(
                  'Arrived Wed, 11 May',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    const Text(
                      'to Fri, 13 May   ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.animateToPage(1,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      child: const Text(
                        'Edit location',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 47,
                ),
                const Text(
                  'Plck-Up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const Text(
                  'Find a Store',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 23.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Text(
                        'Have a Promo Code?',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      )),
                      Icon(
                        Icons.add,
                        size: 33,
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                          fontSize: 22,
                          color: AppColors.gr6,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'US\$10.00',
                      style: TextStyle(
                          fontSize: 22,
                          color: AppColors.gr6,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery',
                      style: TextStyle(
                          fontSize: 22,
                          color: AppColors.gr6,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Standard - Free',
                      style: TextStyle(
                          fontSize: 22,
                          color: AppColors.gr6,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Estimated Total',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'US\$10.00 + Tax',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: AppColors.w,
                      builder: (context) => const Widget2BagScreen(),
                    );
                  },
                  child: const BlackButton(
                    text: 'Checkout', textColor: AppColors.w,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}