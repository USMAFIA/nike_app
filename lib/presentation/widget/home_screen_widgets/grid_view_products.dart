import 'package:flutter/material.dart';

class GridViewProducts extends StatefulWidget {
  final List<String> products;
  const GridViewProducts({super.key,required this.products});

  @override
  State<GridViewProducts> createState() => _GridViewProductsState();
}

class _GridViewProductsState extends State<GridViewProducts> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: widget.products.length,
      itemBuilder: (context,index){

        },
    );
  }
}
