import 'package:flutter/material.dart';
import 'package:shopee_food/module/main/widget/title_widget.dart';

class CategoriesView extends StatelessWidget {
  CategoriesView({super.key});

  final List<String> listImages = [
    '24_Hours',
    'Near_Me',
    'Promo',
    'Top_Selling'
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 22),
      child: Column(
        children: [
          const TitleWidget('Category'),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                listImages.length,
                (index) => InkWell(
                  onTap: () {},
                  child: Column(
                    children: [
                      Image.asset(
                          'assets/images/categories/${listImages[index].toLowerCase()}.png'),
                      const SizedBox(height: 8),
                      Text(
                        listImages[index].replaceAll("_", " "),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
