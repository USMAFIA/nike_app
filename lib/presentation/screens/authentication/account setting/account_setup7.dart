import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/presentation/screens/authentication/account%20setting/account_setup8.dart';

import '../../../../constant/colors.dart';
import '../../../widget/account_settings_widget/account_setup_heading.dart';

class AccountSetup7 extends StatefulWidget {
  const AccountSetup7({super.key});

  @override
  State<AccountSetup7> createState() => _AccountSetup7State();
}

class _AccountSetup7State extends State<AccountSetup7> {
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
            padding: const EdgeInsets.only(right: 20.0, left: 20, top: 50),
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
                          width: 120,
                          height: 4,
                          color: Colors.white,
                        ),
                        Container(
                          width: 60,
                          height: 4,
                          color: const Color(0x30ffffff),
                        ),
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                    ),
                    child: AccountSetupHeading(text: 'Want to sue Location\nServices to help you\nfind the closest Nike\nStore, access in-store\nand location-based\nfeatures, and see\nexperiences near you?'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const AccountSetup8()));
                    },
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color:AppColors.w,
                          border: Border.all(
                            color:const Color(0x00000000),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child:const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(color: AppColors.bk),
                          ),
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
