import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/utils/color_lib.dart';

class ReCategoryPicker extends StatefulWidget {
  const ReCategoryPicker({super.key, required this.categories});
  final List<String> categories;

  @override
  State<ReCategoryPicker> createState() => _ReCategoryPickerState();
}

class _ReCategoryPickerState extends State<ReCategoryPicker> {
  List<String> categories = [];
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    categories = widget.categories;
  }

  void updateCategorySelectedIndex(int index) {
    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            widget.categories.length,
            (index) {
              var item = categories[index];
              bool isSelected = selectedIndex == index;
              return InkWell(
                onTap: () {
                  updateCategorySelectedIndex(index);
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
                    color: isSelected ? ColorLib.primaryColor : ColorLib.white,
                  ),
                  child: Center(
                    child: Text(
                      item,
                      style: GoogleFonts.poppins(
                          color: isSelected
                              ? ColorLib.white
                              : const Color.fromARGB(100, 25, 25, 25),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
