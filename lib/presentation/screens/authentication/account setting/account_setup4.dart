import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

import '../../../../constant/colors.dart';
import '../../../widget/account_settings_widget/account_setup_heading.dart';
import '../../../widget/account_settings_widget/account_setup_img_name.dart';
import '../../../widget/hel_text.dart';
import 'account_setup5.dart';

class AccountSetup4 extends StatefulWidget {
  const AccountSetup4({super.key});

  @override
  State<AccountSetup4> createState() => _AccountSetup4State();
}

class _AccountSetup4State extends State<AccountSetup4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Blur(
            blur: 35,
            blurColor: Theme.of(context).focusColor,
            child: Image.asset(
              width: double.infinity,
              height: double.infinity,
              'assets/images/account_setup2_image.png',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(right: 20.0,left: 20,top: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 4,
                          color: Colors.white,
                        ),
                        Container(
                          width: 120,
                          height: 4,
                          color: const Color(0x30ffffff),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: AccountSetupHeading(
                      text: 'What sports, brands\nand collections are you\ninterested in?'),
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 17),
                  isSelected: false,
                  showDivider: true,
                  heading: 'Running',
                  image: 'assets/images/ellipse2_running.png',
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 17),
                  isSelected: false,
                  showDivider: true,
                  heading: 'Lifestyle',
                  image: 'assets/images/ellipse2_lifestyle.png',
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 17),
                  isSelected: false,
                  showDivider: true,
                  heading: 'Basketball',
                  image: 'assets/images/ellipse2_basketball.png',
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 17),
                  isSelected: false,
                  showDivider: true,
                  heading: 'Soccer',
                  image: 'assets/images/ellipse2_soccer.png',
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 17),
                  isSelected: false,
                  showDivider: true,
                  heading: 'Jorden',
                  image: 'assets/images/ellipse2_jordan.png',
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 17),
                  isSelected: false,
                  showDivider: true,
                  heading: 'Nike By You',
                  image: 'assets/images/ellipse2_nike_by_you.png',
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const AccountSetup5()));
                  },
                  child: Center(
                    child: Container(
                      height: 51,
                      width: 137,
                      decoration: BoxDecoration(
                          color: AppColors.w,
                          borderRadius: BorderRadius.circular(50)),
                      child: const Center(
                        child: HelText(
                          text: 'Next',
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
