import 'package:flutter/material.dart';
import 'package:nike_app/presentation/screens/authentication/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'constant/colors.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    print('====================>main.dart<====================');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const SplashScreen(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.pl),
        useMaterial3: true,
      ),
    );
  }
}
