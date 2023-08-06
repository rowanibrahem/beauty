

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/styles.dart';

class HeadingView extends StatelessWidget {
  const HeadingView({
    super.key, required this.heading,
  });
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 12,),
        GestureDetector(onTap: () {
          GoRouter.of(context).pop();
        },
            child: const Icon(Icons.arrow_back_ios_new_outlined,size: 28,)),
        Spacer(),

        Text(heading,style: Styles.textStyle32

          ,textAlign: TextAlign.center,),
        Spacer()
      ],
    );
  }
}