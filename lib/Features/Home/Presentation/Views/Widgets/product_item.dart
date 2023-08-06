


import 'package:flutter/material.dart';

import '../../../../../Core/Utils/assets.dart';
import 'favourite_icon.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(   //.95/1.35
      aspectRatio: 1.85/1.65 ,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Container(

          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100,bottom: 100),
                child: FavouriteIcon(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Image.asset(Assets.test_product),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8)

          ),
        ),
      ),
    );
  }
}