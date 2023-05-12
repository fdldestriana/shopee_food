import 'package:flutter/material.dart';
import 'package:shopee_food/state_util.dart';
import '../view/search_result_view.dart';

class SearchResultController extends State<SearchResultView> implements MvcController {
  static late SearchResultController instance;
  late SearchResultView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}