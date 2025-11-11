import 'package:flutter/material.dart';
import 'package:newsapp/views/categoryview.dart';

import '../models/Categorylist.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.cate});
  CategoryModel cate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(category: cate.name);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 110,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cate.image),
              fit: BoxFit.fill,
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              cate.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
