import 'package:flutter/material.dart';
import 'package:shopee_food/core.dart';
import '../controller/event_controller.dart';

class EventView extends StatefulWidget {
  const EventView({Key? key}) : super(key: key);

  Widget build(context, EventController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Event"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<EventView> createState() => EventController();
}