


import 'package:flutter/material.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/search_text_field.dart';

import 'heading_view.dart';
import 'new_arrival_grid_view.dart';

class NewArrivalBody extends StatelessWidget {
  const NewArrivalBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column (
      children: [
        SizedBox(height: 24,),
        HeadingView(heading: 'New Arrival',),
        SizedBox(height: 26,),
        SearchTextField(),
        SizedBox(height: 22,),
        Flexible(child: NewArrivalGridView())

      ],
    );
  }
}