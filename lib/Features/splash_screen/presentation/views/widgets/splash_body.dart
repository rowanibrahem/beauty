import 'package:beauty/Core/Utils/assets.dart';
import 'package:beauty/Features/boarding_screen/presentation/views/boarding_view.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {

    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const BoardingView()));
    });
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(350),
            gradient: const LinearGradient(
              end: Alignment(-1.00, -0.00),
              begin: Alignment(1, 0),
              colors: [Color(0xFF8D51ED), Color(0xFFC21E81)],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(35.0),
            child: Image.asset(AssetsData.logo),
          ),
        ),
      ),
    );
  }
}
