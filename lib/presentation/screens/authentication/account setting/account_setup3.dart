import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';
import '../../../widget/account_settings_widget/account_setup_heading.dart';
import '../../../widget/account_settings_widget/account_setup_img_name.dart';
import 'account_setup4.dart';

class AccountSetup3 extends StatefulWidget {
  const AccountSetup3({super.key});

  @override
  State<AccountSetup3> createState() => _AccountSetup3State();
}

class _AccountSetup3State extends State<AccountSetup3> {
  @override
  Widget build(BuildContext context) {
    bool isMensSelected = false;
    bool isWomensSelected = false;
    bool isBoysSelected = false;
    bool isGirlsSelected = false;
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
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
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
                          width: 40,
                          height: 4,
                          color: Colors.white,
                        ),
                        Container(
                          width: 140,
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
                      text: 'First up, which product\ndo you use the most?'),
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 50),
                  isSelected: isMensSelected,
                  showDivider: true,
                  heading: 'Mens',
                  image: 'assets/images/ellipse1_man.png',
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(top: 20, bottom: 50),
                  isSelected: isWomensSelected,
                  heading: 'Womens',
                  image: 'assets/images/ellipse1_women.png',
                ),
                const AccountSetupHeading(text: 'Any others?'),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  isSelected: isBoysSelected,
                  showDivider: true,
                  heading: 'Boys',
                  image: 'assets/images/ellipise1_boys.png',
                ),
                AccountSetupImgName(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 50
                  ),
                  isSelected: isGirlsSelected,
                  heading: 'Girls',
                  image: 'assets/images/ellipse1_girls.png',
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>const AccountSetup4()));
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
