




import 'package:beauty/Features/Home/Presentation/Views/Widgets/search_text_field.dart';
import 'package:flutter/material.dart';

import 'best_seller_grid_view.dart';
import 'heading_view.dart';

class BestSellerViewBody extends StatelessWidget {
  const BestSellerViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 24,),
        HeadingView(heading: 'Best Seller',),
        SizedBox(height: 26,),
        SearchTextField(),
        SizedBox(height: 22,),
        Flexible(
          child: BestSellerGridView(),
        )
      ],
    );
  }
}




