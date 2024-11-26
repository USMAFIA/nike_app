import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';

import '../../../../data/model/response_models/comment_response_model.dart';
import '../../../utils/utills.dart';
import '../../../widget/hel_text.dart';

class CommentsScreen extends StatefulWidget {
  final PageController controller;
  final List<CommentResponseModel> comment;
  const CommentsScreen(
      {super.key, required this.controller, required this.comment});

  @override
  State<CommentsScreen> createState() => _CommentsScreenState();
}

class _CommentsScreenState extends State<CommentsScreen> {
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const HelText(
            text: 'COMMENTS',
            size: 20,
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                height: 1,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: HelText(
                  text: 'Comments (19)',
                  size: 20,
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
              Expanded(
                child: ListView.builder(
                    itemCount: widget.comment.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(top: 8, bottom: 20),
                        width: double.infinity,
                        height: 130,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(isImageValid(widget
                                                    .comment[index].userImage ??
                                                '')
                                            ? widget.comment[index].userImage!
                                            : 'https://plus.unsplash.com/premium_photo-1675129522693-bd62ffe5e015?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                      ),
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                HelText(
                                  text: widget.comment[index].userName ==
                                              null ||
                                          widget.comment[index].userName == ''
                                      ? 'no user found'
                                      : widget.comment[index].userName!,
                                  size: 22,
                                  color: AppColors.bk,
                                ),
                              ],
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 44),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 5,),
                                  HelText(text: widget.comment[index].comment ==
                                      null ||
                                      widget.comment[index].comment == ''
                                      ? 'no user found'
                                      : widget.comment[index].comment!,size: 17,color: AppColors.bk,),
                                  const SizedBox(height: 10,),
                                  HelText(text: widget.comment[index].time ==
                                      null ||
                                      widget.comment[index].time == ''
                                      ? 'no user found'
                                      : widget.comment[index].time!,size: 14,color: AppColors.gr6,)
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
