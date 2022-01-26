import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';
//import 'timeline.dart';

class TimelineStep3 extends StatelessWidget {
  const TimelineStep3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Timeline(
        children: <TimelineModel>[
          TimelineModel(
            Container(
              height: 100,
              child: const Center(
                child: Text(
                  "Open .dmg file",
                  style: TextStyle(
                    color: Color.fromRGBO(30, 80, 170, 1),
                  ),
                ),
              ),
            ),
            icon: const Icon(
              Icons.radio_button_unchecked,
              color: Colors.white,
            ),
            iconBackground: Color.fromRGBO(30, 80, 170, 1),
          ),
          TimelineModel(
            Container(
              height: 100,
              child: const Center(
                child: Text("data"),
              ),
            ),
            icon: const Icon(Icons.android),
            iconBackground: Colors.cyan,
          ),
        ],
        position: TimelinePosition.Left,
        iconSize: 8,
        lineColor: Colors.blue,
        // shrinkWrap: true,
      ),
    );
  }
}
