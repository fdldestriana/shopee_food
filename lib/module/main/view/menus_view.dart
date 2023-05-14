import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopee_food/module/main/widget/menu_widget.dart';
import 'package:shopee_food/utils/color_lib.dart';

class MenusView extends StatelessWidget {
  const MenusView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 28, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Main Course',
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
          ListView.separated(
              physics: const ScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) => const MenuWidget(),
              separatorBuilder: (context, index) => const SizedBox(height: 18),
              itemCount: 4)
        ],
      ),
    );
  }
}
