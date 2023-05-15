import 'package:flutter/material.dart';
import 'package:shopee_food/module/main/widget/menu_widget.dart';
import 'package:shopee_food/module/main/widget/title_widget.dart';

class MenusView extends StatelessWidget {
  const MenusView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleWidget('Main Course'),
          ListView.separated(
              physics: const ScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) => const MenuWidget(
                  'assets/images/foods/barbeque_ramen_noodle.png'),
              separatorBuilder: (context, index) => const SizedBox(height: 18),
              itemCount: 4)
        ],
      ),
    );
  }
}
