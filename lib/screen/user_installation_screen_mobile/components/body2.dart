import 'package:flutter/material.dart';
import 'package:flutter_crm_test/components/background.dart';
import 'package:flutter_crm_test/components/header.dart';
//import 'package:flutter_crm_test/components/steps.dart';
import 'package:flutter_crm_test/components/timelinestep3.dart';

class Body2 extends StatefulWidget {
  const Body2({Key? key}) : super(key: key);

  @override
  State<Body2> createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Background(
      child: SingleChildScrollView(
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
            TimelineStep3(),
            //Steps(stepCount: 1, secondRoute: '/step3'),
          ],
        ),
      ),
    ));
  }
}
