import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
class DoneWidgetBag extends StatefulWidget {
  final PageController controller;
  const DoneWidgetBag({super.key,required this.controller});
  @override
  State<DoneWidgetBag> createState() => _DoneWidgetBagState();
}
class _DoneWidgetBagState extends State<DoneWidgetBag> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pop(context);
      Navigator.pop(context);
      widget.controller.animateToPage(2, duration: Duration(milliseconds: 379), curve: Curves.easeInOut);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: AppColors.w,
      child: Center(
          child: Icon(Icons.check_circle_outline_rounded,size: 130,color: AppColors.gn,),
        ),
    );
  }
}
