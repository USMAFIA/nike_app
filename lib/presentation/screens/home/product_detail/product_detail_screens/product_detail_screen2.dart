import 'package:flutter/material.dart';
import '../../../../widget/hel_text.dart';

class ProductDetailScreen2 extends StatefulWidget {
  final PageController controller;
  const ProductDetailScreen2({super.key,required this.controller});
  @override
  State<ProductDetailScreen2> createState() => _ProductDetailScreen2State();
}
class _ProductDetailScreen2State extends State<ProductDetailScreen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const HelText(
              text: 'View Product Details',
              size: 20,
            ),
            centerTitle: true,
        ),
        body: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) {
            widget.controller.animateToPage(5,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24,vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  HelText(text: 'LEGENDARY STYLE REFINED',size: 24,),
                  SizedBox(height: 20),
                  HelText(
                    text: 'The Nike Everyday Plus Cushioned Socks\nbring comfort to your workout with extra\ncushioning under the heel and forefoot and a snug, supportive arch band. Sweat-wicking power and breathability up top help keep your feet dry and cool to help push you through that extra set.',
                    size: 17,
                  ),
                  SizedBox(height: 30),
                  HelText(text: 'Benefits',size: 24,),
                  SizedBox(height: 20),
                  HelText(
                    text: '• Cushioning under the forefoot and heel\n  helps soften the impact of your workout.\n• Dri-FIT technology helps your feet stay \n  dry and comfortable.\n• Band around the arch feels snug and\n  supportive.\n• Breathable knit pattern on top adds\n  ventilation.\n• Reinforced heel and toe are made to last.',
                    size: 17,
                  ),
                  SizedBox(height: 30),
                  HelText(text: 'Product Details',size: 24,),
                  SizedBox(height: 20),
                  HelText(
                    text: '• Fabric: 61-67% cotton/30-36%\n  polyester/2% spandex/1% nylon\n• Machine wash \n• Imported \n• Note: Material percentages may vary \n  slightly depending on color. Check label\n  for actual content. \n• Shown: Multi-Color \n• Style: SX6897-965',
                    size: 17,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
