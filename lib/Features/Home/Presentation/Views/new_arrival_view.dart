

import 'package:flutter/material.dart';

import 'Widgets/new_arrival_body.dart';

class NewArrivalView extends StatelessWidget {
  const NewArrivalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: NewArrivalBody()),
    );
  }
}
