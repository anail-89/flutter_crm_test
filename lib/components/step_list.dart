import 'package:flutter/material.dart';
import 'package:flutter_crm_test/components/dash_line_widget.dart';
import 'package:flutter_crm_test/components/percent_indicator_demo.dart';
import 'package:flutter_crm_test/components/stepCard.dart';

import 'package:flutter_crm_test/models/step_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StepList extends StatelessWidget {
  const StepList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.35,
      width: double.infinity,
      // alignment: Alignment.topLeft,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: StepCard(
              text: 'Open .dmg file',
              icon: Icons.radio_button_checked,
              textColor: Color.fromRGBO(30, 80, 170, 1),
            ),
          ),
          const Positioned(
            height: 35,
            width: 3,
            child: DashLine(),
            left: 10,
            top: 10,
          ),
          const Positioned(
            top: 45,
            child: StepCard(
              text: 'Installation',
              icon: Icons.radio_button_unchecked,
              textColor: Color.fromRGBO(30, 80, 170, 1),
            ),
          ),
          const Positioned(
            height: 40,
            width: 3,
            child: DashLine(),
            left: 10,
            top: 60,
          ),
          const Positioned(
            top: 95,
            child: StepCard(
              text: 'Personal Information',
              icon: Icons.radio_button_unchecked,
              textColor: Colors.grey,
            ),
          ),
          const Positioned(
            height: 35,
            width: 3,
            child: DashLine(),
            left: 10,
            top: 115,
          ),
          const Positioned(
            top: 150,
            child: StepCard(
              text: 'Password Setup',
              icon: Icons.radio_button_unchecked,
              textColor: Colors.grey,
            ),
          ),
          Positioned(
            top: 180,
            child: PercentIndicatorDemo(),
          ),
        ],
      ),
    );
  }
}
