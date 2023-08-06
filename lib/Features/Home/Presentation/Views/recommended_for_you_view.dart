

import 'package:flutter/material.dart';

import 'Widgets/recommended_view_body.dart';

class RecommendedForYouView extends StatelessWidget {
  const RecommendedForYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: RecommendedViewBody()),
    );
  }
}
