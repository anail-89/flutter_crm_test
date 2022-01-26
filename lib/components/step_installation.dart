import 'package:flutter/material.dart';
import 'package:flutter_crm_test/components/stepCard.dart';

import 'package:flutter_crm_test/models/step_model.dart';

class StepInstallation extends StatelessWidget {
  const StepInstallation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.topLeft,
      //margin: EdgeInsets.only(left: 32),
      child: StepCard(),
    );
  }
}
