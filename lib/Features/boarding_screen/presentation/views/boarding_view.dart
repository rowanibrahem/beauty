import 'package:beauty/Features/boarding_screen/presentation/views/widgets/boarding_body.dart';
import 'package:flutter/material.dart';
class BoardingView extends StatelessWidget {
  const BoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BoardingBody(),
    );
  }
}
