





import 'package:beauty/Features/Home/Presentation/Views/Widgets/product_item.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/Colors.dart';
import '../../../../../Core/Utils/styles.dart';
import 'book_rating.dart';

class HomeProduct extends StatelessWidget {
  const HomeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .95/1.35 ,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8,),
              ProductItem(),
              SizedBox(height: 8,),
              Text('Alastin',style: Styles.textStyle16Black,),
              SizedBox(height: 8,),
              Text('Skincare',style: Styles.textStyle16Grey,),
              SizedBox(height: 8,),

              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Text('\$45.00',style: Styles.textStyle16Black,),
                    Spacer(),
                    BookRating()
                  ],
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
        color:ColorsApp.homeFeatureColor,
          borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}


