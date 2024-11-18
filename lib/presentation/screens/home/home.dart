import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.w,
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            (_page == 0) ?
            Icons.home : Icons.home_outlined,
            color: (_page == 0) ? AppColors.w : AppColors.bk,
          ),
          label: '',
          backgroundColor: AppColors.bk,
        ),
        BottomNavigationBarItem(
            icon: Icon(
              (_page == 1) ?
              Icons.search : Icons.search_sharp,
              color: (_page == 1) ? AppColors.w : AppColors.bk,
            ),
            label: '',
            backgroundColor: AppColors.bk),
        BottomNavigationBarItem(
            icon: Icon(
              (_page == 2) ?
              Icons.add_circle : Icons.add_circle_outline,
              color: (_page == 2) ? AppColors.w : AppColors.bk,
            ),
            label: '',
            backgroundColor: AppColors.bk),
        BottomNavigationBarItem(
          icon: Icon(
            (_page == 3) ?
            Icons.video_collection : Icons.video_collection_outlined,
            color: (_page == 3) ? AppColors.w : AppColors.bk,
          ),
          label: '',
          backgroundColor: AppColors.bk,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            (_page == 4) ?
            Icons.person :Icons.person_outline,
            color: (_page == 4) ? AppColors.w : AppColors.bk,
          ),
          label: '',
          backgroundColor: AppColors.bk,
        ),
      ],),
      body: Column(),
    );
  }
}
