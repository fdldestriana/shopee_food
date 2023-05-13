import 'package:flutter/material.dart';
import 'package:shopee_food/core.dart';
import '../controller/search_result_controller.dart';

class SearchResultView extends StatefulWidget {
  const SearchResultView({Key? key}) : super(key: key);

  Widget build(context, SearchResultController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("SearchResult"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<SearchResultView> createState() => SearchResultController();
}
