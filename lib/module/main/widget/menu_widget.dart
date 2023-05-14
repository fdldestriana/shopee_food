import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/module/main/widget/tag_widget.dart';
import 'package:shopee_food/utils/color_lib.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 336,
      height: 97,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/foods/japanese_noodle.png',
                width: 88,
                height: 88,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Salty Bolognese Spaghetti',
                    style: GoogleFonts.poppins(
                        color: ColorLib.darkBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 65),
                    child: Image.asset('assets/images/discount/discount.png'),
                  )
                ],
              ),
              const SizedBox(height: 2),
              Text(
                'Western Food, Main Course, Halal, Pasta...',
                style: GoogleFonts.poppins(
                    color: ColorLib.darkBlack,
                    fontSize: 10,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 2),
              Row(
                children: [
                  const Icon(Icons.share_location_outlined),
                  const SizedBox(width: 2),
                  Text(
                    '500 m',
                    style: GoogleFonts.poppins(
                        color: const Color.fromARGB(100, 25, 25, 25),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.circle_notifications),
                  const SizedBox(width: 2),
                  Text(
                    '10 minute',
                    style: GoogleFonts.poppins(
                        color: const Color.fromARGB(100, 25, 25, 25),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(height: 4),
              const Row(
                children: [
                  TagWidget('Free Delivery'),
                  SizedBox(width: 6),
                  TagWidget('Cashback 20%'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
