import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

import '../../../../constant/global_constants.dart';
import '../../../../data/model/response_models/products_response_model.dart';

class Home2 extends StatefulWidget {
  final PageController controller;
  const Home2({super.key, required this.controller});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int _currentIndex = 0;
  late final PageController currentController;

  @override
  void initState() {
    super.initState();
    currentController = PageController(initialPage: _currentIndex);
  }

  @override
  void dispose() {
    currentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<ProductsResponseModel> products = [
      ProductsResponseModel(
        title: 'Cosmic Unity 3 N7',
        imageUrl: 'https://bbkicks-news.com/wp-content/uploads/2023/10/nike-cosmic-unity-3-n7-FV6079-001_02.jpeg',
        price: 'US\$170',
        productType: 'Basketball Shoes',
        whichColor: '1 Colours',
      ),
      ProductsResponseModel(
        title: 'Nike Benassi N7',
        imageUrl: 'https://momentumshop.ca/cdn/shop/files/AURORA_FV5914-010_PHCTH000-2000_5000x.jpg?v=1699637955',
        price: 'US\$35',
        productType: 'Slides',
        whichColor: '1 Colours',
      ),
      ProductsResponseModel(
        title: 'Nike Sportswear Club Fleece N7',
        imageUrl: 'https://classic.cdn.media.amplience.net/i/hibbett/F5727_0001_main',
        price: 'US\$130',
        productType: 'Pullover Hoodie',
        whichColor: '1 Colours',
      ),
      ProductsResponseModel(
        title: 'Nike Sportswear Club Fleece N7',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_VQutLvrJ-VHA4m98ggj8oEb7V4R9CEp64w&s',
        price: 'US\$130',
        productType: 'Joggers',
        whichColor: '1 Colours',
      ),
    ];
    final labels = ["All", "Tops & T-Shirts", "Hoodies & Pullovers"];
    final pages = GlobalConstants.home2Items(context, products);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.w,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.tune_outlined,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_sharp,
                size: 30,
              ),
            ),
          ],
          title: const HelText(
            text: 'N7 Collection',
            size: 25,
          ),
        ),
        backgroundColor: AppColors.w,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tab navigation
            SizedBox(
              height: 56,
              width: double.infinity,
              child: Row(
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
