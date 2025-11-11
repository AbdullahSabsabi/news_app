import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/articlemodel.dart';

import 'newstile.dart';

class ListNewsTile extends StatelessWidget {
  ListNewsTile({required this.articles, super.key});

  List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return NewsTile(articl: articles[index]);
      }),
    );
  }
}
