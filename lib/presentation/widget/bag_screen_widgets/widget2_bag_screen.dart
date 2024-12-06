import 'package:flutter/material.dart';
import 'package:nike_app/presentation/widget/bag_screen_widgets/delivery1_bag_screen.dart';

import '../../../constant/colors.dart';
import '../black_button.dart';

class Widget2BagScreen extends StatelessWidget {
  final PageController controller;
  const Widget2BagScreen({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    bool isData = false;
    return Container(
      height: 440,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Nike Everyday Plus Cushioned',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
            ),
            Text(
              'Mystic Navy/Worn Blue/Worn Blue',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.gr6,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 28,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Delivery',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    isData
                        ? 'Select Delivery'
                        : 'Free Delivery\nArrives by Tue, 10 May',
                    style: TextStyle(
                      color: isData ? AppColors.pk : AppColors.gr6,
                      fontSize: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bk,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Divider(),
            const SizedBox(
              height: 14,
            ),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 17,
                  ),
                  const Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        isData ? 'Select Payment' : '136******383',
                        style: TextStyle(
                          color: isData ? AppColors.pk : AppColors.bk,
                          fontSize: 16,
                        ),
                      ),
                      isData
                          ? SizedBox()
                          : Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Container(
                                height: 28,
                                width: 42,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: AppColors.gr4),
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bk,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Divider(),
            const SizedBox(
              height: 13,
            ),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 19,
                  ),
                  const Text(
                    'Purchase Summary',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                  Text(
                    'US\$10.00',
                    style: TextStyle(
                      color: AppColors.gr6,
                      fontSize: 16,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(
                      Icons.add,
                      color: AppColors.bk,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Divider(),
            Text(
              'By tapping ‘Submit Payment’ , I agree to the Terms of Sale.',
              style: TextStyle(fontSize: 13, color: AppColors.gr6),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  context: context,
                  backgroundColor: AppColors.w,
                  elevation: 1110,
                  builder: (context) => Delivery1BagScreen(controller: controller,),
                );
              },
              child: BlackButton(
                text: 'Submit Payment',
                color: isData ? AppColors.gr1 : AppColors.bk,
                textColor: isData ? AppColors.gr6 : AppColors.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
