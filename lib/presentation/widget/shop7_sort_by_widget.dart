import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

class Shop7SortByWidget extends StatefulWidget {
  final String text;
  bool isEnabled;
  bool isSortBy;

  Shop7SortByWidget({
    super.key,
    required this.text,
    this.isEnabled = false,
    this.isSortBy = false,
  });

  @override
  State<Shop7SortByWidget> createState() => _Shop7SortByWidgetState();
}

class _Shop7SortByWidgetState extends State<Shop7SortByWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
      child: InkWell(
        onTap: () {
          setState(() {
            widget.isEnabled = !widget.isEnabled;
          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  shape: widget.isSortBy ? BoxShape.circle : BoxShape.rectangle,
                  color: AppColors.w,
                  border: Border.all(color: widget.isEnabled ? AppColors.bk :AppColors.gr3, width: 2.7),
                  borderRadius: widget.isSortBy ? null : BorderRadius.circular(7),
                ),
                child: widget.isEnabled
                    ? Center(
                  child: Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      shape: widget.isSortBy ? BoxShape.circle : BoxShape.rectangle,
                      color: AppColors.bk,
                      borderRadius: widget.isSortBy ? null : BorderRadius.circular(7),
                    ),
                  ),
                )
                    : const SizedBox(),
              ),
            ),
            HelText(text: widget.text, size: 20),
          ],
        ),
      ),
    );
  }
}