import 'package:flutter/material.dart';
import 'package:nike_app/presentation/widget/bag_screen_widgets/add_delivery_address.dart';

import '../../../constant/colors.dart';
import '../black_button.dart';

class Delivery1BagScreen extends StatelessWidget {
  const Delivery1BagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const bool isAddress = true;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.w,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            mainAxisAlignment:
            MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 18,
                    top: 20,
                    left: 18,
                    bottom: 7),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
                  children: [
                    const Text(
                      'Delivery',
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.bk,
                          fontWeight:
                          FontWeight.w600),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.remove,
                          size: 30,
                          color: AppColors.bk,
                        )),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding:
                const EdgeInsets.symmetric(
                    vertical: 14.0),
                child: Row(
                  children: [
                    const Padding(
                      padding:
                      EdgeInsets.all(
                          16.0),
                      child: Icon(
                        Icons
                            .check_circle_rounded,
                        size: 25,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Free Delivery',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.bk,
                                fontWeight:
                                FontWeight
                                    .w500),
                          ),
                          Text(
                            'Arrives Wed, 11 May to Fri,\n13 May',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.gr6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets
                          .symmetric(
                          horizontal: 15.0),
                      child: Text(
                        'More Options',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.bk,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding:
                const EdgeInsets.symmetric(
                    vertical: 7.0),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment
                      .spaceBetween,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.all(
                          18.0),
                      child: Icon(
                        Icons.circle_outlined,
                        size: 25,
                        color: AppColors.gr3,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,
                        mainAxisAlignment:
                        MainAxisAlignment
                            .start,
                        children: [
                          const Text(
                            'Pick-Up',
                            style: TextStyle(
                                fontSize: 16,
                                color:
                                AppColors.bk,
                                fontWeight:
                                FontWeight
                                    .w500),
                          ),
                          Text(
                            'Find a Location',
                            style: TextStyle(
                              fontSize: 14,
                              color:
                              AppColors.gr6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets
                          .symmetric(
                          horizontal: 15.0),
                      child: Text(
                        'More Options',
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.bk,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Padding(
                padding:
                EdgeInsets.only(
                    top: 6,bottom: 6,left: 23),
                child: Text(
                  'Pick-Up',
                  style: TextStyle(
                      fontSize: 19,
                      color:
                      AppColors.bk,
                      fontWeight:
                      FontWeight
                          .w500),
                ),
              ),
              const Divider(),
              Padding(
                padding:
                const EdgeInsets.only(
                    top: 5,bottom: 10,left: 23,right: 23),
                child:!isAddress ? Row(
                  children: [
                    const Icon(Icons.warning_rounded,size: 20,color: AppColors.r,),
                    const Expanded(
                      child: Text(
                        '  Enter Delivery Address',
                        style: TextStyle(
                            fontSize: 19,
                            color:
                            AppColors.r,
                            fontWeight:
                            FontWeight
                                .w400),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                        showModalBottomSheet(
                          isScrollControlled:true,
                          context: context,
                          elevation: 1100,
                          backgroundColor: AppColors.w,
                          builder: (context) => const AddDeliveryAddress(),
                        );

                      },
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight:
                            FontWeight
                                .w400),
                      ),
                    ),
                  ],
                ) : Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(Icons.check_circle_rounded,size: 20,color: AppColors.bk,),
                    ),
                     Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'John Smith, 652-858-0392',
                            style: TextStyle(
                                fontSize: 17,
                                color:
                                AppColors.bk,
                                fontWeight:
                                FontWeight
                                    .w400),
                          ),
                          Text(
                            '2950 S 108th St, West Allis,\nUnited States',
                            style: TextStyle(
                                fontSize: 17,
                                color:
                                AppColors.gr6,
                                fontWeight:
                                FontWeight
                                    .w400),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                        showModalBottomSheet(
                          isScrollControlled:true,
                          context: context,
                          elevation: 1100,
                          backgroundColor: AppColors.w,
                          builder: (context) => const AddDeliveryAddress(),
                        );

                      },
                      child: const Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight:
                            FontWeight
                                .w400),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: BlackButton(text: 'Continue', textColor: !isAddress ? AppColors.bk : AppColors.w,),
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: BlackButton(text: 'Add Address',color: AppColors.w, textColor: !isAddress ? AppColors.w : AppColors.bk,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
