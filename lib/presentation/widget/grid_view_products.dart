import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/utils/utills.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';

import '../../data/model/response_models/products_response_model.dart';

class GridViewProducts extends StatefulWidget {
  final List<ProductsResponseModel> products;
  const GridViewProducts({super.key, required this.products});

  @override
  State<GridViewProducts> createState() => _GridViewProductsState();
}

class _GridViewProductsState extends State<GridViewProducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.55),
      itemCount: widget.products.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 281,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                    children: [
                  Container(
                    width: 190,
                    height: 190,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: isImageAsset(widget.products[index].imageUrl!) ? AssetImage(widget.products[index].imageUrl ?? 'assets/images/error.jpeg') : NetworkImage(widget.products[index].imageUrl ??
                            'https://plus.unsplash.com/premium_photo-1661765961176-95e74df91e3c?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      alignment: Alignment.topRight,
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                        color: AppColors.w,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: const Center(
                        child: Icon(
                              Icons.favorite_border_sharp,
                              color: AppColors.bk,
                            )
                      ),
                    ),
                  ),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 5, bottom: 2),
                  child: HelText(
                    text: widget.products[index].title ?? 'title',
                    size: 18,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 2),
                  child: HelText(
                    text: widget.products[index].productType ?? 'productType',
                    color: AppColors.gr6,
                    size: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 2),
                  child: HelText(
                    text: widget.products[index].whichColor ?? 'Which Colour',
                    color: AppColors.gr6,
                    size: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 2),
                  child: HelText(
                    text: widget.products[index].price ?? 'Price of product',
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
