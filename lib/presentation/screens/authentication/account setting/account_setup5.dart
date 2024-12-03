import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/screens/authentication/account%20setting/account_setup6.dart';

import '../../../widget/account_settings_widget/account_setup_heading.dart';

class AccountSetup5 extends StatefulWidget {
  const AccountSetup5({super.key});

  @override
  State<AccountSetup5> createState() => _AccountSetup5State();
}

class _AccountSetup5State extends State<AccountSetup5> {
  bool isSelected = false;
  bool anySelected = false;
  List selected = [];
  List<num> shoeSize = [
    4,
    4.5,
    5,
    5.5,
    6,
    6.5,
    7,
    7.5,
    8,
    8.5,
    9,
    9.5,
    10,
    10.5,
    11,
    11.5,
    12,
    12.5,
    13,
    13.5,
    14,
    14.5,
    15,
    16
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
                          width: 80,
                          height: 4,
                          color: AppColors.w,
                        ),
                        Container(
                          width: 100,
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
                  child: AccountSetupHeading(text: 'What’s your shoe size?'),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 40),
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: GridView.builder(
                      itemCount: shoeSize.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 71.75 / 51,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        bool isSelected = selected.contains(shoeSize[index]);
                        return InkWell(
                          onTap: () {
                            if(!isSelected){
                              setState(() {
                                selected.clear();
                                selected.add(shoeSize[index]);
                                anySelected = true;
                              });
                            }else{
                              setState(() {
                                selected.clear();
                                selected.remove(shoeSize[index]);
                                anySelected = false;
                              });
                            }
                          },
                          child: Container(
                            height: 71.75,
                            width: 51,
                            decoration: BoxDecoration(
                              color:
                                  isSelected ? AppColors.w : AppColors.gr8,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                shoeSize[index].toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  color:
                                      isSelected ? AppColors.bk : AppColors.w,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>const AccountSetup6() ));
                    },
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: !anySelected ? AppColors.gr8 : AppColors.w,
                          border: Border.all(
                            color: !anySelected
                                ? AppColors.bk
                                : const Color(0x00000000), // Border color
                            width: 1, // Border width
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: !anySelected
                              ? Text(
                            'Skip',
                            style: TextStyle(color: AppColors.gr3),
                          )
                              : const Text(
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
