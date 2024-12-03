import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../black_button.dart';

class Widget3BagScreen extends StatefulWidget {
  final int selectedQuantity;
  const Widget3BagScreen({super.key,this.selectedQuantity = 0});

  @override
  State<Widget3BagScreen> createState() => _Widget3BagScreenState();
}

class _Widget3BagScreenState extends State<Widget3BagScreen> {
  @override
  Widget build(BuildContext context) {
    int selected = widget.selectedQuantity;
    return Container(
      height: 386,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 160.0),
            child: Container(
              height: 4,
              width: 46,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(10),
                color: AppColors.gr6,
              ),
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Text(
            'Remove',
            style: TextStyle(
                fontSize: 20,
                color: AppColors.gr4,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListWheelScrollView.useDelegate(
              itemExtent: 64,
              perspective: 0.00003,
              onSelectedItemChanged: (index) {
                setState(() {
                  selected = index + 1;
                });
              },
              childDelegate:
              ListWheelChildBuilderDelegate(
                builder: (context, index) {
                  if (index < 0 || index >= 10) {
                    return null;
                  }
                  return Center(
                    child: Text(
                      "${index + 1}",
                      style: const TextStyle(
                          fontSize: 24),
                    ),
                  );
                },
                childCount: 10,
              ),
          ),
          ),
          const SizedBox(
            height: 20,
          ),
          const BlackButton(text: 'Done', textColor: AppColors.w,),
          const SizedBox(
            height: 37,
          ),
        ],
      ),
    );
  }
}
