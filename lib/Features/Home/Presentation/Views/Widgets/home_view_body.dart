



import 'package:beauty/Features/Home/Presentation/Views/Widgets/recommended_list_view.dart';
import 'package:beauty/Features/Home/Presentation/Views/Widgets/search_text_field.dart';
import 'package:beauty/Features/Home/Presentation/Views/Widgets/view_all.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/Utils/assets.dart';
import '../../../../../Core/Utils/styles.dart';
import 'best_seller_list_view.dart';
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
          SearchTextField(),
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
                       ViewAll(text: 'Best Seller', onPressed: () {
                         GoRouter.of(context).push(
                           AppRouter.kBestSellerView,);
                       },),
                       SizedBox(height: 16,),
                       BestSellerListView(),
                       SizedBox(height: 32,),
                       ViewAll(text: 'Recommended For You', onPressed: () {
                         GoRouter.of(context).push(AppRouter.kRecommendedView);

                       },),
                       SizedBox(height: 16,),
                       RecommendedListView(),
                       SizedBox(height: 32,),
                       Image.asset(Assets.home1),
                       SizedBox(height: 32,),
                       ViewAll(text: 'New Arrival', onPressed: () {
                         GoRouter.of(context).push(AppRouter.kNewArrivalView);

                       },),
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
