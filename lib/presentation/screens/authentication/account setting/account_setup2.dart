import 'package:flutter/material.dart';
import 'package:nike_app/presentation/screens/authentication/account%20setting/account_setup3.dart';

import '../../../../constant/colors.dart';
import '../../../widget/account_settings_widget/account_setup_heading.dart';
import '../../../widget/black_button.dart';

class AccountSetup2 extends StatefulWidget {
  const AccountSetup2({super.key});

  @override
  State<AccountSetup2> createState() => _AccountSetup2State();
}

class _AccountSetup2State extends State<AccountSetup2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              width: double.infinity,
              height: double.infinity,
              'assets/images/account_setup2_image.png',
              fit: BoxFit.fill,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.7,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.73),
                  ],
                  stops: const [0.6, 1.0],
                ),
              ),
            ),
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40,),
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 4,
                            color: AppColors.w,
                          ),
                          Container(
                            width: 160,
                            height: 4,
                            color: const Color(0x30ffffff),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0,),
                    child:
                    AccountSetupHeading(text: 'To personalize your\nexperience and\nconnect you to sport,\nwe’ve got a few\nquestions for you.'),
                  ),
                  Expanded(
                    flex: 2,
                      child: Container()),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountSetup3()));
                        },
                        child: const BlackButton(text: 'Get Started',color: AppColors.w,),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
