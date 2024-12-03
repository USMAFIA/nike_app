import 'package:flutter/material.dart';
import 'package:nike_app/presentation/widget/black_button.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';
import '../../../../constant/colors.dart';

class BagScreen2 extends StatefulWidget {
  final PageController controller;
  const BagScreen2({super.key, required this.controller});

  @override
  State<BagScreen2> createState() => _BagScreen2State();
}

class _BagScreen2State extends State<BagScreen2> {
  final TextEditingController textEditingController = TextEditingController();
  bool isFilled = false;

  @override
  void initState() {
    super.initState();
    textEditingController.addListener(() {
      setState(() {
        isFilled = textEditingController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Delivery Options',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            leading: InkWell(
              onTap: (){
                widget.controller.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
              },
              child: const Icon(
                Icons.close_outlined,
                size: 30,
                color: AppColors.bk,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 47),
                const HelText(text: '  Delivery', size: 24),
                const SizedBox(height: 27),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      hintText: "Enter Postcode",
                      hintStyle: TextStyle(color: AppColors.gr6),
                      contentPadding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: AppColors.gr6,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: AppColors.bk,
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                Container(height: 12, width: double.infinity, color: AppColors.gr2),
                const SizedBox(height: 30),
                const HelText(text: '  Delivery Options', size: 24),
                const SizedBox(height: 34),
                const HelText(text: '  Free No-Rush Delivery', size: 14),
                const HelText(text: '  Arrives Thu, 12 May', size: 17),
                const SizedBox(height: 18),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(),
                ),
                const SizedBox(height: 18),
                const HelText(text: '  Free Delivery', size: 14),
                const HelText(text: '  Arrives Wed, 11 May', size: 17),
                const SizedBox(height: 18),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(),
                ),
                const SizedBox(height: 18),
                const HelText(text: '  US\$10.00 Delivery', size: 18),
                const SizedBox(height: 30),
                HelText(
                  text:
                  '  All dates and prices are subject to change. Actual delivery\n  options will be calculated at checkout.',
                  color: AppColors.gr6,
                  size: 14,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    child: BlackButton(
                      text: 'Update',
                      color: isFilled ? AppColors.bk : AppColors.gr1, textColor: isFilled ? AppColors.w : AppColors.gr6,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
