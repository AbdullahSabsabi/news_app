import 'package:flutter/material.dart';

import '../widgets/homewidget.dart';

import '../widgets/myappbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: HomeWidget(),
    );
  }
}
