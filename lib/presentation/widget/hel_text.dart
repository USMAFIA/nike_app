
import 'package:flutter/material.dart';

class HelText extends StatelessWidget {
  const HelText({super.key,required this.text,this.size = 32,this.color = Colors.black});
  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size,fontFamily: 'hel',color: color),);
  }
}
