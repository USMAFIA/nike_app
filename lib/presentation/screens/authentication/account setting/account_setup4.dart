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
  List<String> selectSport = [];
  List<Map<dynamic,dynamic>> sports = [
    {
      'title' : 'Running',
      'image' : 'assets/images/ellipse2_running.png'
    },
    {
      'title' : 'Lifestyle',
      'image' : 'assets/images/ellipse2_lifestyle.png'
    },
    {
      'title' : 'Basketball',
      'image' : 'assets/images/ellipse2_basketball.png'
    },
    {
      'title' : 'Soccer',
      'image' : 'assets/images/ellipse2_soccer.png'
    },
    {
      'title' : 'Jorden',
      'image' : 'assets/images/ellipse2_jordan.png'
    },
    {
      'title' : 'Nike By You',
      'image' : 'assets/images/ellipse2_nike_by_you.png'
    },
  ];
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
                Expanded(
                  child: ListView.builder(
                      itemCount: sports.length,
                      itemBuilder: (context,index){
                        return AccountSetupImgName(
                          onTap: () {
                            if (selectSport.contains(sports[index]['title'])) {
                              selectSport.remove(sports[index]['title']);
                            } else {
                              selectSport.add(sports[index]['title']);
                            }
                            setState(() {});
                          },
                          padding: const EdgeInsets.only(top: 17),
                          isSelected: selectSport.contains(sports[index]['title']),
                          showDivider: true,
                          heading: sports[index]['title'],
                          image: sports[index]['image'],
                        );
                      },
                  ),
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
