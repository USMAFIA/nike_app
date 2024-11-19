import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';

import '../../../constant/global_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   late int _page = 0;
   PageController pageController = PageController();

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
    return Scaffold(
      backgroundColor: AppColors.w,
      bottomNavigationBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,
              color: (_page == 0) ?AppColors.bk : Colors.grey[600] ,
            ),
            label: 'Home',
            backgroundColor: AppColors.w,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_sharp,
                color: (_page == 1) ?  AppColors.bk : Colors.grey[600],
              ),
              label: 'Shop',
              backgroundColor: AppColors.w),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline,
                color: (_page == 2) ?  AppColors.bk : Colors.grey[600],
              ),
              label: 'Favorites',
              backgroundColor: AppColors.w),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,
              color: (_page == 3) ? AppColors.bk : Colors.grey[600],
            ),
            label: 'Bag',
            backgroundColor: AppColors.w,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,
              color: (_page == 4) ? AppColors.bk : Colors.grey[600],
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
        children: GlobalConstants.homeItems(context),
      ),
    );
  }
}
