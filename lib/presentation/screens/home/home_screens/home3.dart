import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/black_button.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class Home3 extends StatefulWidget {
  final PageController controller;
  const Home3({super.key, required this.controller});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController commentController = TextEditingController();
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 376,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1731607352247-663df98aa547?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(top: 40, bottom: 50, right: 24, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    HelText(
                      text: 'Soyeon’s Dance\nChallenge 😎',
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: HelText(
                        text:
                            'Hip hop dancer Soyeon Jang shows us an\nepic dance challenge in the latest Playlist\nepisode. Soyeon dances three parts of the\nroutine - first fast, then slow. Then she\ncombines all the moves for an awesome\ndance party with her buddy, Disco Dancer.\nKids will get inspired to dance along and\nmake up a dance routine of their own.',
                        size: 17,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, bottom: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: InkWell(
                          onTap: () {
                            widget.controller.animateToPage(6,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          },
                          child: const Icon(Icons.file_upload_outlined)),
                    ),
                    InkWell(
                        onTap: (){
                          widget.controller.animateToPage(8, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
                        },
                        child: const Icon(Icons.messenger_outline)),
                  ],
                ),
              ),
              Container(
                height: 339,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1731332066050-47efac6e884f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  width: 350,
                  child: const BlackButton(text: 'Explore', textColor: AppColors.w,),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 350,
                  child: Divider(),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24.0, top: 30, bottom: 30),
                child: HelText(
                  text: 'Comments (19)',
                  size: 22,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Center(
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: AppColors.gr6),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: commentController,
                            decoration: const InputDecoration(
                              hintText: 'Add a comment...',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 40,
                            width: 70,
                            decoration: BoxDecoration(
                              color: AppColors.bk,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Center(child: HelText(text: 'Post',size: 15,color: AppColors.w),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
