import 'package:flutter/material.dart';
import 'package:shopee_food/state_util.dart';
import '../view/event_view.dart';

class EventController extends State<EventView> implements MvcController {
  static late EventController instance;
  late EventView view;

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