import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LinerIndicator extends StatefulWidget {
  const LinerIndicator({Key? key}) : super(key: key);

  @override
  State<LinerIndicator> createState() => _LinerIndicatorState();
}

class _LinerIndicatorState extends State<LinerIndicator> {
  // late double percent;
  // @override
  // void initState() {
  //   Timer timer;
  //   timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
  //     setState(() {
  //       percent += 10;
  //       if (percent >= 100) {
  //         timer.cancel();
  //         // percent=0;
  //       }
  //     });
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
      width: 300,
      height: 100,
      child: LinearPercentIndicator(
        animation: true,
        animationDuration: 10000,
        lineHeight: 20,
        percent: 0.8,
        progressColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.white,
      ),
    ));
  }
}
