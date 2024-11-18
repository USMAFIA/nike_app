import 'package:flutter/material.dart';

import '../../../../constant/colors.dart';
import '../../../widget/account_settings_widget/account_setup_heading.dart';
import '../../../widget/hel_text.dart';
import 'account_setup2.dart';

class AccountSetup1 extends StatefulWidget {
  const AccountSetup1({super.key});

  @override
  State<AccountSetup1> createState() => _AccountSetup1State();
}

class _AccountSetup1State extends State<AccountSetup1> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const AccountSetup2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bk,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(flex: 1, child: SizedBox()),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.26,
                    height: MediaQuery.of(context).size.width * 0.26,
                    child: Image.asset('assets/images/nike_white.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: AccountSetupHeading(text:'Hi John,\nWelcome to Nike.\nThanks for becoming\na Member!'),
                  ),
                ],
              )),
          const Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }
}
