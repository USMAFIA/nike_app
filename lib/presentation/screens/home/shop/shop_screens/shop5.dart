import 'package:flutter/material.dart';

import '../../../../../data/model/response_models/products_response_model.dart';
import '../../../../widget/grid_view_products.dart';

class Shop5 extends StatefulWidget {
  final PageController controller;
  const Shop5({super.key,required this.controller});
  @override
  State<Shop5> createState() => _Shop5State();
}

class _Shop5State extends State<Shop5> {
  final List<ProductsResponseModel> socksitems =[
    ProductsResponseModel(
  title: 'Nike Everyday Plus Cushioned',
  imageUrl: 'assets/images/sock1.png',
  productType: 'Training Crew Socks (3 Pairs)',
  whichColor: '10 Colours',
  price: 'US\$22',
  ),
    ProductsResponseModel(
      title: 'Nike Everyday Plus Cushioned',
      imageUrl: 'assets/images/sock2.png',
      productType: 'Training Crew Socks (6 Pairs)',
      whichColor: '7 Colours',
      price: 'US\$28',
    ),
    ProductsResponseModel(
      title: 'Nike Elite Crew',
      imageUrl: 'assets/images/sock3.png',
      productType: 'Basketball socks',
      whichColor: '7 Colours',
      price: 'US\$16',
    ),
    ProductsResponseModel(
      title: 'Nike Everyday Plus Cushioned',
      imageUrl: 'assets/images/sock4.png',
      productType: 'Training Crew Socks (6 Pairs)',
      whichColor: '5 Colours',
      price: 'US\$28',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        appBar: AppBar(
          title: const Expanded(
              child: Text(
            'socks',
            style: TextStyle(fontSize: 16),
          )),
          centerTitle: true,
          actions: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.tune),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Icon(
                    Icons.search_sharp,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: GridViewProducts(products: socksitems,),
      ),
    );
  }
}
