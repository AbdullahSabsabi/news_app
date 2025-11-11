import 'package:flutter/cupertino.dart';
import 'package:newsapp/models/Categorylist.dart';

import 'categorycard.dart';

class ListCard extends StatelessWidget {
  ListCard({super.key});

  List<CategoryModel> categories = [
    CategoryModel(image: 'assets/business.jpg', name: 'business'),
    CategoryModel(image: 'assets/entertaiment.avif', name: 'entertaiment'),
    CategoryModel(image: 'assets/general.jpg', name: 'general'),
    CategoryModel(image: 'assets/health.avif', name: 'health'),
    CategoryModel(image: 'assets/science.avif', name: 'science'),
    CategoryModel(image: 'assets/sport.jpg', name: 'sport'),
    CategoryModel(image: 'assets/technology.jpeg', name: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(cate: categories[index]);
        },
      ),
    );
  }
}
