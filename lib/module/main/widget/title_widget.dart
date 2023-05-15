import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/utils/color_lib.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(
    this.title, {
    super.key,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
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
    );
  }
}
