import 'package:flutter/cupertino.dart';
import 'package:newsapp/widgets/newslistviewbuilder.dart';

import 'listcard.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: ListCard()),
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          NewListViewBuilder(category: 'basics'),
        ],
      ),
    );
  }
}
