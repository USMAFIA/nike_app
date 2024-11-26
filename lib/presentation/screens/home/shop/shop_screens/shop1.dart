import 'package:flutter/material.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

import '../../../../../constant/colors.dart';
import '../../../../../constant/global_constants.dart';

class Shop1 extends StatefulWidget {
  final PageController controller;
  const Shop1({super.key,required this.controller});

  @override
  State<Shop1> createState() => _Shop1State();
}

class _Shop1State extends State<Shop1> {
  int _currentIndex = 0;
  late final PageController currentController = PageController(initialPage: _currentIndex);

  @override
  void dispose() {
    currentController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final labels = ["Men", "Women", "Kids"];
    final pages = GlobalConstants.shop1Items(context);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(2,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: const [
            Icon(
              Icons.search_sharp,
              size: 40,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20,bottom: 20),
              child: HelText(
                text: 'Shop',
                size: 40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(labels.length, (index) {
                final isSelected = _currentIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                    currentController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HelText(
                        text: labels[index],
                        size: 16,
                        color: isSelected ? AppColors.bk : AppColors.gr6,
                      ),
                      if (isSelected)
                        Container(
                          height: 2,
                          width: 30 + (index * 10),
                          color: AppColors.bk,
                          margin: const EdgeInsets.only(top: 4),
                        ),
                    ],
                  ),
                );
              }),
            ),
            Expanded(
              child: PageView.builder(
                controller: currentController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemCount: pages.length,
                itemBuilder: (context, index) {
                  return pages[index];
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
