


import 'package:flutter/material.dart';
import 'package:makeup_app/Core/Utils/assets.dart';
import 'package:makeup_app/Core/Utils/styles.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/best_seller_list_view.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/home_product.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/persistent_bottom_nav_bar.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/recommended_list_view.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/search_text_field_with_suffix.dart';
import 'package:makeup_app/Features/Home/Presentation/Views/Widgets/view_all.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'custom_app_bar.dart';
import 'new_arrival_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          SizedBox(height: 16,),
          CustomAppBar(),
          SizedBox(height: 22,),
          SearchTextFieldWithSuffixIcon(),
          SizedBox(height: 16,),
          SizedBox(
            height: 30,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children:
                components()
            ),
          ),
             Expanded(
               child: CustomScrollView(
                 slivers:[
                   SliverToBoxAdapter(
                     child: Column(
                     children: [
                       Image.asset(Assets.home1),
                       SizedBox(height: 32,),
                       ViewAll(text: 'Best Seller'),
                       SizedBox(height: 16,),
                       BestSellerListView(),
                       SizedBox(height: 32,),
                       ViewAll(text: 'Recommended For You'),
                       SizedBox(height: 16,),
                       RecommendedListView(),
                       SizedBox(height: 32,),
                       Image.asset(Assets.home1),
                       SizedBox(height: 32,),
                       ViewAll(text: 'New Arrival'),
                       SizedBox(height: 16,),
                       NewArrivalListView()

                     ],
                 ),
                   ),
                 ]
               ),
             )
                ]
      );








  }
  List<Widget> components() {
    return [
      SizedBox(width: 16,),

      Text('Home',style: Styles.textStyle16Grey.copyWith(
        color: Colors.black
      ),),
      SizedBox(width: 16,),
      Text('Special Offers',style: Styles.textStyle16Grey,),
      SizedBox(width: 16,),
      Text('Home',style: Styles.textStyle16Grey,),
      SizedBox(width: 16,),

      Text('Brands',style: Styles.textStyle16Grey,),
      SizedBox(width: 16,),

      Text('Bodycare',style: Styles.textStyle16Grey,),
      SizedBox(width: 16,),

      Text('Skincare',style: Styles.textStyle16Grey,),
      SizedBox(width: 16,),

      Text('Haircare',style: Styles.textStyle16Grey,),
      SizedBox(width: 16,),
      Text('Bebecare',style: Styles.textStyle16Grey,),
      SizedBox(width: 16,),


    ];
  }
}
