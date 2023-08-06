



import 'package:go_router/go_router.dart';

import '../../Features/Home/Presentation/Views/best_seller_view.dart';
import '../../Features/Home/Presentation/Views/home_view.dart';
import '../../Features/Home/Presentation/Views/new_arrival_view.dart';
import '../../Features/Home/Presentation/Views/recommended_for_you_view.dart';

abstract class AppRouter
{

  static const kHomeView='/homeView';
  static const kBestSellerView='/bestSellerView';
  static const kNewArrivalView='/newArrivalView';

  static const kRecommendedView='/recommendedView';
  static final router=GoRouter(
      routes:
      [
       /* GoRoute(
            path: '/',
            builder: (context,state)=>const SplashView()
        ),*/
        GoRoute(
            path: '/',
            builder: (context,state)=>const HomeView()
        ),
        GoRoute(
            path: kBestSellerView,
            builder: (context,state)=>const BestSellerView()
        ),
        GoRoute(
            path: kRecommendedView,
            builder: (context,state)=>const RecommendedForYouView()
        ),
        GoRoute(
            path: kNewArrivalView,
            builder: (context,state)=>const NewArrivalView()
        ),
      ]
  );
}