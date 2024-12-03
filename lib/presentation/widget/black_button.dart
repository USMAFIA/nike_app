import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class BlackButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color color;
  final double height;
  final double width;
  const BlackButton({super.key,this.height = 60,required this.text,this.color =AppColors.bk,required this.textColor ,this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        border: Border.all(width: 2,color: AppColors.gr3),
      ),
      child: Center(child: HelText(text: text, color:textColor ,size: 20,),),
    );
  }
}
