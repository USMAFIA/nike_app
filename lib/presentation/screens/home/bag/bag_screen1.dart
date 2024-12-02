import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/black_button.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

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
                        Text(
                          'Not in a Hurry',
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 23),
                        ),
                        Text(
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
                      SizedBox(
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
                          SizedBox(
                            width: 12,
                          ),
                          Column(
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
                              backgroundColor: Colors.white,
                              builder: (context) => Container(
                                height: 386,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 160.0),
                                      child: Container(
                                        height: 4,
                                        width: 46,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppColors.gr6,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 64,
                                    ),
                                    Text(
                                      'Remove',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: AppColors.gr4,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Expanded(
                                      child: ListWheelScrollView.useDelegate(
                                        itemExtent: 64,
                                        perspective: 0.00003,
                                        onSelectedItemChanged: (index) {
                                          setState(() {
                                            selectedQuantity = index + 1;
                                          });
                                        },
                                        childDelegate:
                                            ListWheelChildBuilderDelegate(
                                          builder: (context, index) {
                                            if (index < 0 || index >= 10)
                                              return null;
                                            return Center(
                                              child: Text(
                                                "${index + 1}",
                                                style: const TextStyle(
                                                    fontSize: 24),
                                              ),
                                            );
                                          },
                                          childCount: 10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    BlackButton(text: 'Done'),
                                    SizedBox(
                                      height: 37,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text(
                            'Qty 1',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          )),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.keyboard_arrow_up,
                        size: 34,
                      ),
                      Expanded(child: SizedBox()),
                      Text(
                        'US\$10.00',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Delivery',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Arrived Wed, 11 May',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Text(
                      'to Fri, 13 May   ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    InkWell(
                      onTap: () {
                        widget.controller.animateToPage(1,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      child: Text(
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
                SizedBox(
                  height: 47,
                ),
                Text(
                  'Plck-Up',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Find a Store',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23.0),
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
                Divider(),
                SizedBox(
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
                Row(
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
                SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.white,
                      builder: (context) => Container(
                        height: 440,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Nike Everyday Plus Cushioned',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'Mystic Navy/Worn Blue/Worn Blue',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.gr6,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 28,
                              ),
                              Divider(),
                              SizedBox(
                                height: 16,
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      'Select Delivery',
                                      style: TextStyle(
                                        color: AppColors.pk,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.bk,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              Divider(),
                              SizedBox(
                                height: 14,
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 17,
                                    ),
                                    Text(
                                      'Payment',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      'Select Payment',
                                      style: TextStyle(
                                        color: AppColors.pk,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.bk,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Divider(),
                              SizedBox(
                                height: 13,
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 19,
                                    ),
                                    Text(
                                      'Purchase Summary',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                      'US\$10.00',
                                      style: TextStyle(
                                        color: AppColors.gr6,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Icon(
                                        Icons.add,
                                        color: AppColors.bk,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Divider(),
                              Text(
                                'By tapping ‘Submit Payment’ , I agree to the Terms of Sale.',
                                style: TextStyle(
                                    fontSize: 10, color: AppColors.gr6),
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showModalBottomSheet(
                                      context: context,
                                      backgroundColor: Colors.white,
                                      builder: (context) => Container(
                                        height: 704,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              //
                                              //
                                              //
                                              //
                                              //
                                              //
                                              //
                                              //
                                              //
                                              //
                                              //
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  child: BlackButton(
                                    text: 'Submit Payment',
                                    color: AppColors.gr1,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: BlackButton(
                    text: 'Checkout',
                  ),
                ),
                SizedBox(
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
