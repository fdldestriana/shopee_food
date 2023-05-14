import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/core.dart';
import 'package:shopee_food/module/main/view/categories_view.dart';
import 'package:shopee_food/module/main/view/menus_view.dart';
import 'package:shopee_food/module/main/view/promos_view.dart';
import 'package:shopee_food/utils/color_lib.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  Widget build(context, MainController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: ColorLib.primaryColor,
      body: Stack(
        children: [
          Positioned(
            top: 108.5,
            left: 48,
            child: Column(
              children: [
                Text(
                  'Hi Naufal!',
                  style: GoogleFonts.poppins(
                      color: ColorLib.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 14),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Jl. Lorem ipsum dolor sit am No 1...',
                        style: GoogleFonts.poppins(
                            color: ColorLib.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.arrow_drop_down_sharp,
                        color: ColorLib.white,
                        size: 16.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  width: 300,
                  height: 40,
                  decoration: BoxDecoration(
                    color: '#FAFAFA'.toColor(),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(width: 6),
                        Text(
                          'Search menus or restaurants',
                          style: GoogleFonts.poppins(
                              color: '#191919'.toColor(),
                              fontSize: 14,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 277,
            child: Container(
              width: Get.width,
              height: 565,
              decoration: BoxDecoration(
                color: ColorLib.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Column(
                children: [
                  CategoriesView(),
                  PromosView(controller.pageController),
                  const MenusView()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<MainView> createState() => MainController();
}
