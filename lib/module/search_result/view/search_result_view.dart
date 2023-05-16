import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/core.dart';
import 'package:shopee_food/module/main/widget/menu_widget.dart';
import 'package:shopee_food/module/search_result/widget/category_picker.dart';
import 'package:shopee_food/utils/color_lib.dart';
import '../controller/search_result_controller.dart';

class SearchResultView extends StatefulWidget {
  const SearchResultView({Key? key}) : super(key: key);

  Widget build(context, SearchResultController controller) {
    controller.view = this;
    List<String> foodList = [
      'barbeque_ramen_noodle',
      'black_pepper_spaghetti',
      'cak_to_noodle',
      'italian_spaghetti',
      'japanese_noodle',
      'kroean_sushi_noodle',
      'pinang-pinang_noodle',
      'salty_bolognese_spaghetti',
      'spicy_jakarta_noodle',
      'spicy_tomato_spaghetti'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: const EdgeInsets.only(left: 44, right: 12),
          width: 276,
          height: 40,
          decoration: BoxDecoration(
              color: '#FAFAFA'.toColor(),
              border: Border.all(
                width: 1.0,
                color: const Color.fromARGB(1, 25, 25, 25),
              ),
              borderRadius: BorderRadius.circular(12)),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              isDense: true,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              child: Image.asset('assets/images/buttons/filter.png'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sort by',
                      style: GoogleFonts.poppins(
                          color: ColorLib.darkBlack,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    const ReCategoryPicker(
                      categories: ['Related', 'Nearest', 'Bestsellers'],
                    )
                  ],
                ),
              ),
              ListView.separated(
                  physics: const ScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      MenuWidget('assets/images/foods/${foodList[index]}.png'),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 18),
                  itemCount: foodList.length)
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SearchResultView> createState() => SearchResultController();
}
