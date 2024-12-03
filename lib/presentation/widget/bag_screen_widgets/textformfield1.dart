import 'package:flutter/material.dart';

import '../../../constant/colors.dart';

class Textformfield1 extends StatelessWidget {
  final TextEditingController controller;
  final bool isblack;
  final String title;
  final double top;
  final double rlpadding;
  const Textformfield1({super.key,this.top = 10,this.isblack = false,this.rlpadding = 20,required this.controller,required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top,right: rlpadding,left: rlpadding),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: isblack ? AppColors.bk :AppColors.gr4),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: AppColors.gr4),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: AppColors.gr4),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: AppColors.gr4),
          ),
        ),
      ),
    );
  }
}
