

import 'package:flutter/material.dart';

import 'package:makeup_app/Core/Utils/Colors.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 343,
     height: 36,

      child: TextField(

       // cursorHeight: 36,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)
          ),
          hintText: 'Search',
            filled: true,
            suffixIconColor: ColorsApp.greyColor,
            hintStyle: Styles.textStyle17,
            border: InputBorder.none,
            fillColor: ColorsApp.homeFeatureColor,
            suffixIcon:  Icon(Icons.keyboard_voice_rounded),
            prefixIcon: Image.asset(Assets.searchIcon)



        ),
      ),
    );
  }
}
