import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/utils/color_lib.dart';

class ReCategoryPicker extends StatefulWidget {
  ReCategoryPicker(
      {super.key, required this.categories, required this.isSelected});
  final List<String> categories;
  bool isSelected;

  @override
  State<ReCategoryPicker> createState() => _ReCategoryPickerState();
}

class _ReCategoryPickerState extends State<ReCategoryPicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
          widget.categories.length,
          (index) => InkWell(
            onTap: () {
              widget.isSelected = !widget.isSelected;
              setState(() {});
            },
            child: Container(
              width: 85,
              height: 24,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: const Color.fromARGB(10, 25, 25, 25),
                ),
                borderRadius: BorderRadius.circular(8),
                color:
                    widget.isSelected ? ColorLib.primaryColor : ColorLib.white,
              ),
              child: Center(
                child: Text(
                  widget.categories[index],
                  style: GoogleFonts.poppins(
                      color: widget.isSelected
                          ? ColorLib.white
                          : const Color.fromARGB(100, 25, 25, 25),
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
