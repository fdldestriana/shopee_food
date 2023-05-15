import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shopee_food/module/main/widget/title_widget.dart';

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
          const TitleWidget('Promo & Cashback'),
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
