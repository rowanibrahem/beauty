import 'package:flutter/material.dart';
import 'package:makeup_app/Core/Utils/app_router.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
     routerConfig: AppRouter.router,
     // home: PersistentBottomNavigationBar(),
    );
  }
}

