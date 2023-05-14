import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/utils/color_lib.dart';

class TagWidget extends StatelessWidget {
  const TagWidget(
    this.label, {
    super.key,
  });
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 77,
      height: 20,
      decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: ColorLib.primaryColor,
          ),
          borderRadius: BorderRadius.circular(6)),
      child: FittedBox(
        fit: BoxFit.none,
        child: Text(
          label,
          style: GoogleFonts.poppins(
              color: ColorLib.primaryColor,
              fontSize: 9,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
