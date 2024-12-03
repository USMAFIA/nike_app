import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
class BagScreen3 extends StatefulWidget {
  final PageController controller;
  const BagScreen3({super.key,required this.controller});
  @override
  State<BagScreen3> createState() => _BagScreen3State();
}
class _BagScreen3State extends State<BagScreen3> {
  @override
  void initState() async{
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      widget.controller.animateToPage(4, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(Icons.check_circle_outline_rounded,size: 130,color: AppColors.gn,),
      ),
    );
  }
}
