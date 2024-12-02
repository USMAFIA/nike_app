import 'package:flutter/material.dart';
import 'package:nike_app/data/model/response_models/blog_response_model.dart';
import '../../../constant/global_constants.dart';
class Home extends StatefulWidget {
  final int initialPage;
  const Home({super.key, this.initialPage = 0});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  List<BlogResponseModel> blogs = [
    BlogResponseModel(
        authorImage: 'https://images.unsplash.com/photo-1731877818770-820faabe2d4c?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        authorName: 'faisal',
        description: 'To Keia, Air Max is an emblem ofd who she is-an unstoppable creative force that’s telling her community’s truth. To honor how far female designers and collaborators have pushed streetwear forward, Keia’s carving out space for a new wave of women creatives destined to shake up the sneaker industry.',
        imageUrl: 'https://images.unsplash.com/photo-1731877818770-820faabe2d4c?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        title: '“The future of women in\nsneaker culture looks like a\ntidal wave of opportunities,\nnew seats at new tables, and\ngrowth.”',
    ),
  ];
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
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          physics: const NeverScrollableScrollPhysics(),
          children: GlobalConstants.homeItems(context,_pageController,blogs[0]),
        ),
      ),
    );
  }
}
