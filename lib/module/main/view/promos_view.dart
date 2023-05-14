import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/utils/color_lib.dart';

class PromosView extends StatelessWidget {
  PromosView(this.pageController, {super.key});

  final List<String> listCards = ['discount', 'free_delivery'];
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 196,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Promo & Cashback',
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
          SizedBox(
            width: 335,
            height: 157,
            child: PageView.builder(
              scrollBehavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.trackpad,
                },
              ),
              controller: pageController,
              itemCount: listCards.length,
              pageSnapping: false,
              padEnds: true,
              itemBuilder: (context, index) => Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    'assets/images/cards/${listCards[index]}.png',
                    width: 265,
                    height: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
