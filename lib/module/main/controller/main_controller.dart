import 'package:flutter/material.dart';
import 'package:shopee_food/state_util.dart';
import '../view/main_view.dart';

class MainController extends State<MainView>
    with TickerProviderStateMixin
    implements MvcController {
  static late MainController instance;
  late MainView view;

  final PageController pageController = PageController(viewportFraction: 0.8);

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
