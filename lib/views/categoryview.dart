import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newslistviewbuilder.dart';

class CategoryView extends StatelessWidget {
  String category;
  CategoryView({super.key, required this.category});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [NewListViewBuilder(category: category)]),
    );
  }
}
