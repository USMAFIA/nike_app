import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/dielogue_for_js.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

import 'account setting/account_setup1.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              'assets/images/nike_women1.png'
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.7,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.73),
                ],
                stops: const [0.6, 1.0],
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.3,
                      child: Image.asset('assets/images/nike_white.png'),
                    ),
                    const SizedBox(height: 20),
                    const HelText(
                      text:
                      'Nike App\nBringing Nike Members\nthe best products,\ninspiration and stories\nin sport.',
                      size: 25,
                      color: AppColors.w,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            showSignInDialog(context);
                          },
                          child: Container(
                            width: 140,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColors.w,
                              border: Border.all(
                                color: AppColors.bk,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Center(
                              child: Text(
                                'Join Us',
                                style: TextStyle(color: AppColors.bk),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountSetup1()));
                          },
                          child: Container(
                            width: 140,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColors.bk,
                              border: Border.all(
                                color: AppColors.w,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(color: AppColors.w),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
