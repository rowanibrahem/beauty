

import 'package:flutter/material.dart';

import 'Widgets/best_seller_view_body.dart';

class BestSellerView extends StatelessWidget {
  const BestSellerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BestSellerViewBody()),
    );
  }
}
