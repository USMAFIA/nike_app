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
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0, left: 30,),
                child: HelText(
                  text: 'Discover',
                  size: 29,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 30,bottom: 30),
                child: HelText(
                  color: AppColors.gr6,
                  text: 'Tuesday, 3 May',
                  size: 15,
                ),
              ),
              InkWell(
                onTap: (){
                  widget.controller.animateToPage(6, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
                },
                child: SizedBox(
                    height: 520,
                    width: double.infinity,
                    child: Image.asset('assets/images/discover1.png',fit: BoxFit.fill,),
                ),
              ),
              SizedBox(
                height: 562,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HelText(text: "What's new",size: 20,),
                      HelText(text: 'The latest arrivals from\nNike',color: AppColors.gr6,size: 28,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                                  height: 314,
                                    width: 314,
                                    child: Image.asset('assets/images/discover2.png'),
                                ),
                                HelText(text: 'Air Jordan XXXVI',size: 18,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: HelText(text: 'US\$1`85',size: 18,color: AppColors.gr6,),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                                  height: 314,
                                  width: 314,
                                  child: Image.asset('assets/images/discover2.png'),
                                ),
                                HelText(text: 'Air Jordan XXXVI',size: 18,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: HelText(text: 'US\$1`85',size: 18,color: AppColors.gr6,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 360,
                width: double.infinity,
                child: Image.asset('assets/images/discover3.png',fit: BoxFit.fill,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
