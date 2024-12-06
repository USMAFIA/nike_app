import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nike_app/constant/colors.dart';

import '../../../../logic/services.dart';
import '../../../widget/bag_screen_widgets/textformfield1.dart';

class ProfileScreen2 extends StatefulWidget {
  final PageController controller;
  const ProfileScreen2({super.key, required this.controller});

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController HometownController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  String profileUrl = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    AppMethods().fetchProfileImage().then((value){
      profileUrl = value ?? '';
    }).onError((e,stacktrace){
      print('error Occured ==========> ${e}');
      print('stacktrace  ==========> ${stacktrace}');
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            const Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Cancel',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            )),
            Text(
              'Save',
              style: TextStyle(
                  fontSize: 20,
                  color: AppColors.gr4,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: profileUrl != ''
                              ? NetworkImage(
                                  profileUrl)
                              : const AssetImage(
                                  'assets/images/profile_camera.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    InkWell(
                      onTap: () async {
                        XFile? image = await ImagePicker()
                            .pickImage(source: ImageSource.camera);
                        AppMethods().storePFPImage(
                          image: image,
                        );
                      },
                      child: Text(
                        'Edit',
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColors.gr6,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'Name',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.gr6,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Textformfield1(
                controller: fNameController,
                title: 'First Name',
              ),
              Textformfield1(
                controller: lNameController,
                title: 'last Name',
                top: 0,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  'Hometown',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.gr6,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Textformfield1(
                controller: HometownController,
                title: 'Town/City, Country/Region',
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Text(
                  'Bio',
                  style: TextStyle(
                      fontSize: 15,
                      color: AppColors.gr6,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Textformfield1(
                controller: bioController,
                title: '150 characters',
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
