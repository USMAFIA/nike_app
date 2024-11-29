import 'package:flutter/material.dart';
import 'package:nike_app/constant/colors.dart';
import 'package:nike_app/presentation/screens/home/main_page.dart';
import 'package:nike_app/presentation/widget/hel_text.dart';
import '../../../widget/black_button.dart';
import '../../../widget/shop7_sort_by_widget.dart';

class Shop7 extends StatefulWidget {
  const Shop7({super.key});
  @override
  State<Shop7> createState() => _Shop7State();
}

class _Shop7State extends State<Shop7> {
  final List<Color> colors = [
    AppColors.ppl,
    AppColors.bk,
    AppColors.r,
    AppColors.or,
    AppColors.bl,
    AppColors.w,
    AppColors.bn,
    AppColors.gn,
    AppColors.y,
    AppColors.gr,
    AppColors.pk,
  ];
  final List<String> labels = [
    'Purple',
    'Black',
    'Red',
    'Orange',
    'Blue',
    'White',
    'Brown',
    'Green',
    'Yellow',
    'Grey',
    'Pink',
  ];
  final List<String> sortByItems = [
    'Featured',
    'Newest',
    'Price: Low-High',
    'Price: High-Low',
  ];
  final List<String> genderItems = [
    'Men',
    'Women',
    'Unisex',
  ];
  final List<String> priceItems = [
    '\$0 - \$25',
    '\$25 - \$50',
    '\$50 - \$100',
    '\$100 - \$150',
    'Over \$150',
  ];
  final List<String> brandItems = [
    'Nike Sportswear',
    'Nike Pro',
  ];
  final List<String> sportsItems = [
    'Lifestyle',
    'Running',
    'Training & Gym',
    'Basketball',
  ];
  late final List<Map<String, dynamic>> sections;
  @override
  void initState() {
    super.initState();
    sections = [
      {'title': 'Sort By', 'items': sortByItems},
      {'title': 'Gender (1)', 'items': genderItems},
      {'title': 'Shop By Price', 'items': priceItems},
      {'title': 'Brand', 'items': brandItems},
      {'title': 'Sports & Activities', 'items': sportsItems},
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const HomeScreen(
                      index: 1,
                      page: 0,
                      whichPage: 1,
                    )));
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 20, left: 20, top: 60, bottom: 10),
                child: Row(
                  children: [
                    const Expanded(child: HelText(text: 'Filter')),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen(
                                    index: 1,
                                    page: 0,
                                    whichPage: 1,
                                  ))),
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.bk,
                        ),
                        child: const Icon(Icons.close,
                            color: AppColors.w, size: 27),
                      ),
                    ),
                  ],
                ),
              ),
              ...sections.asMap().entries.map((entry) {
                final sectionIndex = entry.key;
                final section = entry.value;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: HelText(text: section['title'], size: 22),
                    ),
                    if (section['items'].isNotEmpty)
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: section['items'].length,
                        itemBuilder: (context, index) {
                          return Shop7SortByWidget(
                            text: section['items'][index],
                            isSortBy: section['title'] == 'Sort By',
                          );
                        },
                      ),
                    if (sectionIndex == 2)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Divider(),
                          const Padding(
                            padding: EdgeInsets.all(20),
                            child: HelText(text: 'Color', size: 22),
                          ),
                          GridView.count(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 4,
                            children: List.generate(colors.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colors[index],
                                        border: Border.all(
                                            color: AppColors.gr2, width: 2),
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    HelText(
                                      text: labels[index],
                                      size: 16,
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    const Divider(),
                  ],
                );
              }),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    const BlackButton(
                        text: 'Reset(1)', color: AppColors.w, width: 180),
                    const SizedBox(width: 10),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen(
                                        index: 1,
                                        page: 5,
                                        whichPage: 1,
                                      )));
                        },
                        child: const BlackButton(
                            text: 'Apply', color: AppColors.bk, width: 180)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
