import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import '../../../../widget/hel_text.dart';

class ProductDetailScreen3 extends StatefulWidget {
  final PageController controller;
  const ProductDetailScreen3({super.key, required this.controller});
  @override
  State<ProductDetailScreen3> createState() => _ProductDetailScreen3State();
}

class _ProductDetailScreen3State extends State<ProductDetailScreen3> {
  double _sizeValue = 70;
  double _comfortValue = 70;
  double _durableValue = 70;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const HelText(
            text: 'Reviews',
            size: 20,
          ),
          centerTitle: true,
        ),
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            widget.controller.animateToPage(5,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 19, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Nike everyday Plus Cushioned',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 27),
                  ),
                  Text(
                    '2863 Reviews',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        '4.87 Starts  ',
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                      ),
                      Icon(
                        Icons.star,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  HelText(
                    text: 'Size',
                    size: 20,
                  ),
                  Slider(
                    value: _sizeValue,
                    min: 0,
                    max: 100,
                    activeColor: AppColors.gr2,
                    inactiveColor: AppColors.gr2,
                    thumbColor: AppColors.bk,
                    onChanged: (double value) {
                      setState(() {
                        _sizeValue = value;
                      });
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Fits Small',
                        style: TextStyle(color: AppColors.gr6, fontSize: 20),
                      )),
                      Text(
                        'Run Large',
                        style: TextStyle(color: AppColors.gr6, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  HelText(
                    text: 'Comfort',
                    size: 20,
                  ),
                  Slider(
                    value: _comfortValue,
                    min: 0,
                    max: 100,
                    activeColor: AppColors.gr2,
                    inactiveColor: AppColors.gr2,
                    thumbColor: AppColors.bk,
                    onChanged: (double value) {
                      setState(() {
                        _comfortValue = value;
                      });
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Uncomfortable',
                        style: TextStyle(color: AppColors.gr6, fontSize: 20),
                      )),
                      Text(
                        'Comfortable',
                        style: TextStyle(color: AppColors.gr6, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 54,
                  ),
                  HelText(
                    text: 'Durablility',
                    size: 20,
                  ),
                  Slider(
                    value: _durableValue,
                    min: 0,
                    max: 100,
                    activeColor: AppColors.gr2,
                    inactiveColor: AppColors.gr2,
                    thumbColor: AppColors.bk,
                    onChanged: (double value) {
                      setState(() {
                        _durableValue = value;
                      });
                    },
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Non-Durable',
                        style: TextStyle(color: AppColors.gr6, fontSize: 20),
                      )),
                      Text(
                        'Durable',
                        style: TextStyle(color: AppColors.gr6, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: AppColors.gr3,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  HelText(
                    text: 'True Classic, Impressive QC',
                    size: 23,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  HelText(
                    text: 'b89237-bs8ad-cadu',
                    size: 23,
                    color: AppColors.gr6,
                  ),
                  HelText(
                    text: 'Just as I expected. Reliable comfort, and still cool. I was very impressed by the quality, all seams and overlays are stitched nicely and...',
                    size: 20,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  HelText(
                    text: 'More',
                    size: 23,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  HelText(
                    text: 'disappointing',
                    size: 23,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: AppColors.gr2,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: AppColors.gr2,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: AppColors.gr2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  HelText(
                    text: '90302-fcw98efhw-v98wd8fh',
                    size: 23,
                    color: AppColors.gr6,
                  ),
                  HelText(
                    text: 'a bit of a narrow toebox not wide by any stretch',
                    size: 20,
                  ),
                  SizedBox(height: 24,),
                  HelText(
                    text: 'I would definitely buy this product again!!',
                    size: 23,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Icon(
                        Icons.star,
                        size: 25,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  HelText(
                    text: '2hg8-d8gadiu-a87dfydfba',
                    size: 23,
                    color: AppColors.gr6,
                  ),
                  HelText(
                    text: 'Socks came fast, they are very durable and a good quality. My kids love wearing them with all their outfits! Fits just about any style! I ...',
                    size: 20,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  HelText(
                    text: 'More',
                    size: 23,
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
