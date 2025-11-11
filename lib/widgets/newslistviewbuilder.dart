import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/widgets/listnewstile.dart';

import '../models/articlemodel.dart';
import '../services/newservice.dart';

class NewListViewBuilder extends StatefulWidget {
  final String category;
  const NewListViewBuilder({super.key, required this.category});
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewService(dio: Dio()).getNews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListNewsTile(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('error , please try later')),
          );
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Center(child: CircularProgressIndicator()),
            ),
          );
        }
      },
    );
  }
}
