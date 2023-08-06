


import 'package:flutter/material.dart';

import 'home_product.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.35,
      child: ListView.builder(
        //physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
          itemBuilder: (context,index){
            return const HomeProduct();
          }),
    );
  }
}
