


import 'package:flutter/material.dart';
import 'package:makeup_app/Core/Utils/Colors.dart';
import 'package:makeup_app/Core/Utils/assets.dart';


class UserImage extends StatelessWidget {
  const UserImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: ColorsApp.mainColor1),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(Assets.testImage))
      ),
    );
  }
}