import 'package:flutter/material.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

import '../../../constant/colors.dart';

class AccountSetupHeading extends StatelessWidget {
 final  String text;
  const AccountSetupHeading({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return HelText(
      text:
      text,
      size: 32,
      color: AppColors.w,
    );
  }
}
