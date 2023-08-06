


import 'package:flutter/material.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/recommended_grid_view.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/search_text_field.dart';

import 'heading_view.dart';

class RecommendedViewBody extends StatelessWidget {
  const RecommendedViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column (
      children: [
        SizedBox(height: 24,),
        HeadingView(heading: 'Recommended',),
        SizedBox(height: 26,),
        SearchTextField(),
        SizedBox(height: 22,),
        Flexible(child: RecommendedGridView())

      ],
    );
  }
}
