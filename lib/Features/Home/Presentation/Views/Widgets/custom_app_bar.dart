





import 'package:beauty/Features/Home/Presentation/Views/Widgets/user_image.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 29),
      child: Row(
        children: [
          UserImage(),
          Text('Hi, User',style: Styles.textStyle16Grey.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),),
          Spacer(),
          Image.asset(Assets.cart,width: 24,height: 24,)
        ],
      ),
    );
  }
}
