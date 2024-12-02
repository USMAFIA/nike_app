import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/black_button.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
              onTap: () {
                void upgradeContent() {
                  setState(() {
                    isAdded = !isAdded;
                  });
                }

                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      width: double.infinity,
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          !isAdded
                              ? Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 170,
                                            width: 170,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      'assets/images/favourite_image1.png')),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Air Jorden 1 Mid',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Text(
                                                'Shoes',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: AppColors.gr6,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 96,
                                              ),
                                              Text(
                                                'US\$125',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Divider(
                                      color: AppColors.gr3,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      '   Size',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 25),
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Container(
                                              height: 50,
                                              width: 166,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'L (W 6-10 / M 6-8)',
                                                  style: TextStyle(fontSize: 18),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Container(
                                              height: 50,
                                              width: 166,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'L (W 10-13 / M 8-12)',
                                                  style: TextStyle(fontSize: 18),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Container(
                                              height: 50,
                                              width: 166,
                                              decoration: BoxDecoration(
                                                border: Border.all(width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'XL (W 12-15 / M 6-8)',
                                                  style: TextStyle(fontSize: 18),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : SizedBox(
                                  height: 410,
                                  width: double.infinity,
                                  child: Center(
                                    child: Container(
                                      width: 230,
                                      height: 230,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  width: 2, color: AppColors.bk),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.done,
                                                color: AppColors.bk,
                                                size: 70,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 27),
                                          Text(
                                            'Added to Bag',
                                            style: TextStyle(
                                                fontSize: 33,
                                                color: AppColors.bk),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: upgradeContent,
                            child: BlackButton(
                              text: 'Add to Bag',
                              height: 60,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Edit  ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: HelText(text: 'Favourite'),
              ),
              SizedBox(
                height: 300,
                width: 205.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 205.6,
                      width: 205.6,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage('assets/images/favourite_image1.png')),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const HelText(
                      text: '  Air Jorden 1 Mid',
                      size: 20,
                    ),
                    const HelText(
                      text: '  US\$125',
                      size: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
