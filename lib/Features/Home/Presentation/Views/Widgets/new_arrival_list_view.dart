





import 'package:flutter/material.dart';

import 'home_product.dart';

class NewArrivalListView extends StatelessWidget {
  const NewArrivalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.28,
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