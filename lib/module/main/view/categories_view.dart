import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/utils/color_lib.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: GoogleFonts.poppins(
                    color: ColorLib.darkBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 48,
                  height: 22,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(16, 255, 121, 46),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'See all',
                      style: GoogleFonts.poppins(
                          color: ColorLib.primaryColor,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              )
            ],
          ),
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
