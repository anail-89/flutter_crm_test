import 'package:progress_timeline/progress_timeline.dart';
import 'package:flutter/material.dart';

import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
import 'timeline.dart';

class Step2 extends StatefulWidget {
  const Step2({Key? key}) : super(key: key);

  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Timeline(
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
      ),
    );
  }
}
