import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';

import '../../../constant/global_constants.dart';

class HomeScreen extends StatefulWidget {
  final int index;
  final int page;
  final int whichPage;
  const HomeScreen({super.key,this.index = 0,this.whichPage=0,this.page = 0});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   late int _page ;
   late PageController pageController;
   @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.whichPage);
    _page = widget.index;

  }

   @override
   void dispose() {
     super.dispose();
     pageController.dispose();
   }
  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.w,
        bottomNavigationBar: CupertinoTabBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,
                color: (_page == 0) ?AppColors.bk : AppColors.gr6,
              ),
              label: 'Home',
              backgroundColor: AppColors.w,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_sharp,
                  color: (_page == 1) ?  AppColors.bk : AppColors.gr6,
                ),
                label: 'Shop',
                backgroundColor: AppColors.w),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline,
                  color: (_page == 2) ?  AppColors.bk : AppColors.gr6,
                ),
                label: 'Favorites',
                backgroundColor: AppColors.w),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined,
                color: (_page == 3) ? AppColors.bk : AppColors.gr6,
              ),
              label: 'Bag',
              backgroundColor: AppColors.w,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline,
                color: (_page == 4) ? AppColors.bk : AppColors.gr6,
              ),
              label: 'Profile',
              backgroundColor: AppColors.w,
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          physics:  const NeverScrollableScrollPhysics(),
          children: GlobalConstants.mainPageItems(context,widget.page),
        ),
      ),
    );
  }
}
