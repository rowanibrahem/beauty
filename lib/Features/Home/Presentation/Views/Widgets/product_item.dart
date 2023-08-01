


import 'package:flutter/material.dart';

import '../../../../../Core/Utils/assets.dart';
import 'favourite_icon.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: 144,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 112,bottom: 100),
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
    );
  }
}