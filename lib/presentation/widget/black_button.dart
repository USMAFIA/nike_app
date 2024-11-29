import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class BlackButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  const BlackButton({super.key,required this.text,this.color =AppColors.bk,this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 51,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50)
      ),
      child: Center(child: HelText(text: text, color:color == AppColors.bk ? AppColors.w : AppColors.bk,size: 20,),),
    );
  }
}
