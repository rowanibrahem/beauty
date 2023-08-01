import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makeup_app/Core/Utils/Colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../categories_view.dart';
import '../favorites_view.dart';
import '../home_view.dart';
import '../profile_view.dart';


final PersistentTabController _controller
= PersistentTabController(initialIndex: 0);

class PersistentBottomNavigationBar extends StatelessWidget {
  const PersistentBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true, /// ///
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0.0),
      ),
     // popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }

   List<Widget> _buildScreens() {
     return [
       HomeView(),
       CategoriesView(),
       FavoritesView(),
       ProfileView(),
       CategoriesView(),
     ];
   }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_outlined),
        title: ("Home"),
        activeColorPrimary: ColorsApp.mainColor1,
        inactiveColorPrimary: ColorsApp.inActiveNavColor,
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('Images/categories.png',width: 22,height: 22,),
        title: ("Categories"),
        activeColorPrimary: ColorsApp.mainColor1,
        inactiveColorPrimary: ColorsApp.inActiveNavColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.center_focus_strong,color: Colors.white,),
        activeColorPrimary: ColorsApp.mainColor1,
        inactiveColorPrimary: ColorsApp.inActiveNavColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite_border),
        title: ("Favorites"),
        activeColorPrimary: ColorsApp.mainColor1,
        inactiveColorPrimary: ColorsApp.inActiveNavColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outlined),
        title: ("Profile"),
        activeColorPrimary: ColorsApp.mainColor1,
        inactiveColorPrimary: ColorsApp.inActiveNavColor,
      ),
    ];
  }
}
