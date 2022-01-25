import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'timeline.dart';

class TimelineStep3 extends StatelessWidget {
  const TimelineStep3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Timeline(
      children: <TimelineModel>[
        TimelineModel(
          Container(
            height: 100,
            child: Center(
              child: Text("data"),
            ),
          ),
          icon: Icon(Icons.receipt, color: Colors.white),
          iconBackground: Colors.blue,
        ),
        TimelineModel(
          Container(
            height: 100,
            child: Center(
              child: Text("data"),
            ),
          ),
          icon: Icon(Icons.android),
          iconBackground: Colors.cyan,
        ),
      ],
      position: TimelinePosition.Left,
      iconSize: 40,
      lineColor: Colors.blue,
    );
  }
}
