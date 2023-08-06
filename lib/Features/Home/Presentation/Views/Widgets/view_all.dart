



import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({Key? key, required this.text, required this.onPressed}) : super(key: key);
 final String text;
 final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 17),
        child: Row(children: [
          Text(text,style: Styles.textStyle20,),
          Spacer(),
          TextButton(onPressed: onPressed,
          child: const Text('View All',style: Styles.textStyle12,))
        ],),
      );
  }
}
