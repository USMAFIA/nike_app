import 'package:flutter/material.dart';

import '../../../../constant/global_constants.dart';

class Shop extends StatefulWidget {
  final int initialPage;
  const Shop({super.key,this.initialPage = 0});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  late int _currentPage;
  late final PageController _pageController;
  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
    _pageController = PageController(initialPage: _currentPage);
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: GlobalConstants.shopItems(context,_pageController,),
      ),
    );
  }
}
