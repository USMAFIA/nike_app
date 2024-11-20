import 'package:flutter/material.dart';
import '../../constant/colors.dart';

class HelText extends StatelessWidget {
  const HelText({super.key,required this.text,this.size = 32,this.color = AppColors.bk});
  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size,fontFamily: 'hel',color: color),);
  }
}
