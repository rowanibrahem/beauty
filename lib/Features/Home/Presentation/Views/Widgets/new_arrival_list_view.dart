





import 'package:flutter/material.dart';

import 'home_product.dart';

class NewArrivalListView extends StatelessWidget {
  const NewArrivalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context,index){
            return const HomeProduct();
          }),
    );
  }
}