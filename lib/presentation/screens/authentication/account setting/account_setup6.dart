import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/presentation/screens/authentication/account%20setting/account_setup7.dart';
import '../../../../constant/colors.dart';
import '../../../widget/account_settings_widget/account_setup_heading.dart';

class AccountSetup6 extends StatefulWidget {
  const AccountSetup6({super.key});

  @override
  State<AccountSetup6> createState() => _AccountSetup6State();
}

class _AccountSetup6State extends State<AccountSetup6> {
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
                          width: 100,
                          height: 4,
                          color: Colors.white,
                        ),
                        Container(
                          width: 80,
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
                    child: AccountSetupHeading(text: 'Stay in the know with\nnotifications about First\nAccess to product,\ninvites to experiences,\npersonalized offers,\nand order updated.'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const AccountSetup7()));
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
