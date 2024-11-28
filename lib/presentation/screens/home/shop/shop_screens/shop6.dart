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
      title: 'Nike Everyday Plus Cushioned',
      imageUrl: 'assets/images/sock1.png',
      productType: 'Training Crew Socks (3 Pairs)',
      whichColor: '10 Colours',
      price: 'US\$22',

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
        body: const GridViewProducts(products: [],),
      ),
    );
  }
}
