

import 'package:flutter/material.dart';

import 'home_product.dart';

class BestSellerGridView extends StatelessWidget {
  const BestSellerGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 344,
      height: double.maxFinite,
      child: GridView(

        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 16,
            childAspectRatio: .9/1.2 ///
        ),
        children: const [
          HomeProduct(),
          HomeProduct(),
          HomeProduct(),
          HomeProduct(),
          HomeProduct()
        ],

      ),
    );
  }
}