import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/core.dart';
import 'package:shopee_food/module/main/widget/menu_widget.dart';
import 'package:shopee_food/module/main/widget/title_widget.dart';
import 'package:shopee_food/utils/color_lib.dart';

class EventView extends StatefulWidget {
  const EventView({Key? key}) : super(key: key);

  Widget build(context, EventController controller) {
    controller.view = this;
    List<String> foodList = [
      'barbeque_ramen_noodle',
      'black_pepper_spaghetti',
      'cak_to_noodle',
      'italian_spaghetti',
      'japanese_noodle',
      'kroean_sushi_noodle',
      'pinang-pinang_noodle'
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "New Year Online Bazaar",
              style: GoogleFonts.poppins(
                  color: ColorLib.darkBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20.4, 20, 32),
              child: SizedBox(
                width: 336,
                height: 146,
                child: Column(
                  children: [
                    const TitleWidget('Restaurants'),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/restaurant_icons/pizza_hut.png'),
                            const SizedBox(height: 10),
                            Text(
                              'Pizza Hut',
                              style: GoogleFonts.poppins(
                                  color: ColorLib.darkBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/restaurant_icons/kfc.png'),
                            const SizedBox(height: 10),
                            Text(
                              'KFC',
                              style: GoogleFonts.poppins(
                                  color: ColorLib.darkBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                                'assets/images/restaurant_icons/burger_king.png'),
                            const SizedBox(height: 10),
                            Text(
                              'Burger Kings',
                              style: GoogleFonts.poppins(
                                  color: ColorLib.darkBlack,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 336,
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: ColorLib.primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(16, 255, 121, 46),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/buttons/top_up.png'),
                      Text(
                        'Top Up Your Coins',
                        style: GoogleFonts.poppins(
                            color: ColorLib.primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: ColorLib.primaryColor,
                        size: 14,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.separated(
                      physics: const ScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => MenuWidget(
                          'assets/images/foods/${foodList[index]}.png'),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 18),
                      itemCount: foodList.length)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  State<EventView> createState() => EventController();
}
