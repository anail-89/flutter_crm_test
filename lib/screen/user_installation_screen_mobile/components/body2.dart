import 'package:flutter/material.dart';
import 'package:flutter_crm_test/components/background.dart';
import 'package:flutter_crm_test/components/header.dart';
import 'package:flutter_crm_test/components/second_step_button.dart';
import 'package:flutter_crm_test/components/step_list.dart';
//import 'package:flutter_crm_test/components/steps.dart';

class Body2 extends StatefulWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      // child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.13,
          ),
          const header(),
          SizedBox(
            height: size.height * 0.04,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 32),
            child: Text('Steps'),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 32),
            child: StepList(),
          ),

          SizedBox(
            height: 32,
          ),
          Container(
            // width: size.width * 0.75,
            // height: size.height * 0.6,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SecondStepButton(
                    checked: true,
                    text: 'BACK',
                    textColor: Color.fromRGBO(30, 80, 170, 1),
                    routeName: '/user-installation',
                    buttonBackgroundColor: Colors.white,
                    right: 0,
                    top: 0,
                  ),
                  SecondStepButton(
                    checked: true,
                    text: 'CANCEL',
                    textColor: Color.fromRGBO(30, 80, 170, 1),
                    routeName: '/user-installation',
                    buttonBackgroundColor: Colors.white,
                    right: 0,
                    top: 0,
                    paddingHorizontal: 5,
                  ),
                  SecondStepButton(
                    checked: false,
                    text: 'NEXT',
                    textColor: Colors.white,
                    routeName: '/user-installation',
                    buttonBackgroundColor: Color.fromRGBO(255, 125, 100, 1),
                    right: 0,
                    top: 0,
                  ),
                ],
              ),
            ),
          ),
          //Steps(stepCount: 1, secondRoute: '/step3'),
        ],
      ),
      // ),
    );
  }
}
