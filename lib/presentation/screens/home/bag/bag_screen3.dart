import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/black_button.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class BagScreen3 extends StatefulWidget {
  final PageController controller;
  const BagScreen3({super.key, required this.controller});

  @override
  State<BagScreen3> createState() => _BagScreen3State();
}

class _BagScreen3State extends State<BagScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const HelText(text: 'Thank You\nFor Your Order'),
                      InkWell(
                        onTap: () {
                          widget.controller.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const Icon(Icons.cancel_rounded, size: 58),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'We’ve emailed you a confirmation to',
                    style: TextStyle(fontSize: 18, color: AppColors.gr6),
                  ),
                  Row(
                    children: [
                      Text(
                        'john@mail.com',
                        style: TextStyle(
                            fontSize: 18,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        ' and we’ll notify you',
                        style: TextStyle(fontSize: 18, color: AppColors.gr6),
                      ),
                    ],
                  ),
                  Text(
                    'when your order has been dispatched.',
                    style: TextStyle(fontSize: 18, color: AppColors.gr6),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Container(
              height: 10,
              width: double.infinity,
              color: AppColors.gr2,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Delivery',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Flexible(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(fontSize: 19, color: AppColors.gr6),
                        children: const [
                          TextSpan(text: 'John Smith\n'),
                          TextSpan(text: '2950 S 108th St\n'),
                          TextSpan(text: '53227, West Allis, US\n'),
                          TextSpan(text: 'john@mail.com'),
                        ],
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Divider(
                color: AppColors.gr3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Purchase Number',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'C19283791823',
                          style: TextStyle(
                              fontSize: 19,
                              color: AppColors.gr6,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Divider(
                      color: AppColors.gr3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            'Payment',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Text(
                          '136******383',
                          style: TextStyle(
                              fontSize: 19,
                              color: AppColors.gr6,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Container(
                            height: 28,
                            width: 42,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2, color: AppColors.gr4),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 5,
                                  top: 5,
                                  child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 5,
                                  top: 5,
                                  child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Divider(
                      color: AppColors.gr3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                            fontSize: 19,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'USS\$10.00',
                        style: TextStyle(
                            fontSize: 19,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: TextStyle(
                            fontSize: 19,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'USS\$0.00',
                        style: TextStyle(
                            fontSize: 19,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tax',
                        style: TextStyle(
                            fontSize: 19,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'USS\$0.00',
                        style: TextStyle(
                            fontSize: 19,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'USS\$10.00',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                ],
              ),
            ),
            Container(
              height: 10,
              width: double.infinity,
              color: AppColors.gr2,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Item',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 210,
                        width: double.infinity,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Arrives by Tue, 10 May',
                            style: TextStyle(
                                fontSize: 14,
                                color: AppColors.gn6,
                                fontWeight: FontWeight.w600),
                          ),
                          const Text(
                            'Nike Everyday Plus\nCushioned\nUS\$10.00',
                            style: TextStyle(
                                fontSize: 15.5,
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Training Ankle Socks (6\nParis)\nSize L (W 10-13 / M\n8-12)',
                            style: TextStyle(
                                fontSize: 13.7,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40,),
                  InkWell(
                      onTap: (){
                        widget.controller.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                      },
                      child: const BlackButton(text: 'View or Manage Order', textColor: AppColors.w)),
                  const SizedBox(height: 10,),
                  const BlackButton(text: 'Save Receipt', textColor: AppColors.bk,color: AppColors.w,),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
