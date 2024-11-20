import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

import '../../../../data/model/response_models/blog_response_model.dart';
import '../../../utils/utills.dart';

class Home7 extends StatefulWidget {
  final PageController controller;
  final BlogResponseModel blog;
  const Home7({super.key, required this.controller, required this.blog});

  @override
  State<Home7> createState() => _Home7State();
}

class _Home7State extends State<Home7> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.w,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 340,
                width: double.infinity,
                child: Image.network(isImageValid(widget.blog.imageUrl ?? '')
                    ? widget.blog.imageUrl!
                    : 'https://plus.unsplash.com/premium_photo-1675129522693-bd62ffe5e015?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HelText(
                      text: widget.blog.title ?? '"title"',
                      color: AppColors.bk,
                      size: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        bottom: 5,
                      ),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                            image: NetworkImage(isImageValid(
                                    widget.blog.imageUrl ?? '')
                                ? widget.blog.imageUrl!
                                : 'https://plus.unsplash.com/premium_photo-1675129522693-bd62ffe5e015?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    HelText(
                      text: widget.blog.authorName ?? 'no one',
                      size: 15,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 35,bottom: 20),
                        child: HelText(
                          text: widget.blog.description ?? 'Description',
                          color: AppColors.bk,
                          size: 20,
                        )),
                    Center(
                      child: Container(
                        height: 51,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.bk,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: const Center(child: HelText(text: 'Shop Air Max', color: AppColors.w,size: 20,),),
                      ),
                    )
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
