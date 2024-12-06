import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/screens/home/Profile_screens/profile_screen2.dart';
import 'package:nike_app/presentation/widget/black_button.dart';

class ProfileScreen1 extends StatefulWidget {
  final PageController controller;
  const ProfileScreen1({super.key, required this.controller});

  @override
  State<ProfileScreen1> createState() => _ProfileScreen1State();
}

class _ProfileScreen1State extends State<ProfileScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/profile_camera.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'John Smith',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen2(controller: widget.controller,) ));
                        },
                        child: const BlackButton(
                          text: 'Edit Profile',
                          textColor: AppColors.bk,
                          color: AppColors.no,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.unarchive,
                                  color: AppColors.gr4,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Order',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Container(
                              height: 35,
                              width: 2,
                              color: AppColors.gr4,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.contact_page,
                                  color: AppColors.gr4,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Pass',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Container(
                              height: 35,
                              width: 2,
                              color: AppColors.gr4,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.calendar_today,
                                  color: AppColors.gr4,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Events',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Container(
                              height: 35,
                              width: 2,
                              color: AppColors.gr4,
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.settings,
                                  color: AppColors.gr4,
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                const Text(
                                  'Settings',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(height: 14,width: double.infinity,color: AppColors.gr1,),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Indox',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'View Message',
                                    style: TextStyle(fontSize: 20,color: AppColors.gr6,fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.bk,),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 17),
                            child: Divider(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Your Nike Member Rewards',
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    '2 available',
                                    style: TextStyle(fontSize: 20,color: AppColors.gr6,fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(Icons.arrow_forward_ios_outlined,color: AppColors.bk,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(height: 14,width: double.infinity,color: AppColors.gr1,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Following(3)',
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Edit',
                                  style: TextStyle(fontSize: 16,color: AppColors.gr6,fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/images/following_image1.png')),
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/images/following_image2.png')),
                                  ),
                                ),
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('assets/images/following_image3.png')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(height: 60,width: double.infinity,color: AppColors.gr1,
                    child: Center(child: Text('Member Since May 2022',style: TextStyle(color: AppColors.gr6,fontSize: 20),),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
