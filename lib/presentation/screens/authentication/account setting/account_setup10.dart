import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/presentation/screens/home/main_page.dart';

import '../../../../constant/colors.dart';
import '../../../widget/account_settings_widget/account_setup_heading.dart';

class AccountSetup10 extends StatefulWidget {
  const AccountSetup10({super.key});

  @override
  State<AccountSetup10> createState() => _AccountSetup10State();
}

class _AccountSetup10State extends State<AccountSetup10> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }
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
                          width: 180,
                          height: 4,
                          color: Colors.white,
                        ),
                        Container(
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
                    child: AccountSetupHeading(text: 'Congrats!\nYou’re now part of a\ngrowing community of\nNike Members helping\nto build the future of\nsport. Together.'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
