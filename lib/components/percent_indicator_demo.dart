import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicatorDemo extends StatefulWidget {
  @override
  _PercentIndicatorDemoState createState() => _PercentIndicatorDemoState();
}

class _PercentIndicatorDemoState extends State<PercentIndicatorDemo> {
  double percent = 0.0;

  double _height = 15;
  double _width = 200;

  @override
  void initState() {
    Timer timer = 0 as Timer;
    timer = Timer.periodic(Duration(milliseconds: 1000), (_) {
      setState(() {
        percent += 10;
        if (percent >= 100) {
          timer.cancel();
          // percent=0;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Column(
          //   children: [
          //     Text(
          //       'Circular Percent Indicator',
          //       style: TextStyle(
          //           fontStyle: FontStyle.italic,
          //           fontWeight: FontWeight.w700,
          //           fontSize: 15),
          //     ),
          //     SizedBox(
          //       height: 40,
          //     ),
          //     Container(
          //         padding: EdgeInsets.all(10),
          //         child: CircularPercentIndicator(
          //           radius: 120.0,
          //           lineWidth: 10.0,
          //           animation: true,
          //           percent: percent / 100,
          //           center: Text(
          //             percent.toString() + "%",
          //             style: TextStyle(
          //                 fontSize: 20.0,
          //                 fontWeight: FontWeight.w600,
          //                 color: Colors.black),
          //           ),
          //           backgroundColor: Colors.grey[300],
          //           circularStrokeCap: CircularStrokeCap.round,
          //           progressColor: Colors.redAccent,
          //         )),
          //   ],
          // ),
          Column(
            children: [
              Text(
                'Linear Percent indicator',
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 15),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                alignment: Alignment.center,
                child: LinearPercentIndicator(
                  //leaner progress bar
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 20.0,
                  percent: percent / 100,
                  center: Text(
                    percent.toString() + "%",
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.blue[400],
                  backgroundColor: Colors.grey[300],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
