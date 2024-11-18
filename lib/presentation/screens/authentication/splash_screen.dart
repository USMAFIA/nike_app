import 'package:flutter/material.dart';
import 'package:nike_app/presentation/screens/authentication/second_screen.dart';

import '../../../constant/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
     Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SecondScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    print('====================>splash_screen.dart<====================');
    return Scaffold(
      backgroundColor: AppColors.bk,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
                width: 300,
                height: 200,
                fit: BoxFit.cover,
                'assets/images/nike_white.png',
            ),
          ),
        ],
      ),
    );
  }
}
