

import 'package:flutter/material.dart';

import 'package:makeup_app/Core/Utils/Colors.dart';

import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';

class SearchTextFieldWithSuffixIcon extends StatelessWidget {
  const SearchTextFieldWithSuffixIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 343,
      height: 36,

      child: TextField(


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
            suffixIcon:  Icon(Icons.tune),
            prefixIcon: Image.asset(Assets.searchIcon)



        ),
      ),
    );
  }
}
