import 'package:flutter/material.dart';

import '../../../../../data/model/response_models/products_response_model.dart';
import '../../../../widget/grid_view_products.dart';

class Shop6 extends StatefulWidget {
  final PageController controller;
  const Shop6({super.key,required this.controller});

  @override
  State<Shop6> createState() => _Shop6State();
}

class _Shop6State extends State<Shop6> {
  final List<ProductsResponseModel> shop6items = [
    ProductsResponseModel(
      title: 'Nike Air Force 1\'07',
      imageUrl: 'assets/images/best_seller1.png',
      productType: 'Women\'s Shoe',
      whichColor: '5 Colours',
      price: 'US\$115',
      type: 'BestSeller'
    ),
    ProductsResponseModel(
        title: 'Jordan ENike Air Force 1\'07',
        imageUrl: 'assets/images/best_seller2.png',
        productType: 'Men\'s Shoe',
        whichColor: '2 Colours',
        price: 'US\$115',
        type: 'BestSeller'
    ),
    ProductsResponseModel(
        title: 'Jordan Essentials',
        imageUrl: 'assets/images/best_seller3.png',
        productType: 'Men’s Fleece Pullover Hoodie',
        whichColor: '5 Colours',
        price: 'US\$60',
        type: 'BestSeller'
    ),
    ProductsResponseModel(
        title: 'Jordan Essentials',
        imageUrl: 'assets/images/best_seller4.png',
        productType: 'Men’s Fleece Pullover Hoodie',
        whichColor: '5 Colours',
        price: 'US\$60',
        type: 'BestSeller'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        widget.controller.animateToPage(0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Expanded(
              child: Text(
                'Best Sellers',
                style: TextStyle(fontSize: 16),
              )),
          centerTitle: true,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.tune),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    Icons.search_sharp,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: GridViewProducts(products: shop6items,),
      ),
    );
  }
}
