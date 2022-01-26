// import 'package:flutter/material.dart';
// import 'package:flutter_crm_test/components/liner_progress_indicator.dart';
// //import 'package:percent_indicator/percent_indicator.dart';

// class Steps extends StatefulWidget {
//   final int stepCount;
//   final String secondRoute;
//   const Steps({
//     Key? key,
//     required this.stepCount,
//     required this.secondRoute,
//   }) : super(key: key);

//   @override
//   State<Steps> createState() => _StepsState();
// }

// class _StepsState extends State<Steps> {
//   int currentStep = 0;
//   List<Step> getSteps() {
//     return [
//       Step(
//         title: new Text('Open .dmg file'),
//         content: Column(
//             // children: <Widget>[
//             //   TextFormField(
//             //     decoration: InputDecoration(labelText: 'Name'),
//             //   ),
//             //   TextFormField(
//             //     decoration: InputDecoration(labelText: 'Email Address'),
//             //   ),
//             // ],
//             ),
//         isActive: widget.stepCount >= 0,
//         state: widget.stepCount == 0 ? StepState.editing : StepState.complete,
//       ),
//       Step(
//         title: new Text('Installation'),
//         content: Column(
//           children: [
//             LinerIndicator(),
//           ],
//           // children: <Widget>[
//           //   TextFormField(
//           //     decoration: InputDecoration(labelText: 'Home Address'),
//           //   ),
//           //   TextFormField(
//           //     decoration: InputDecoration(labelText: 'Mobile No'),
//           //   ),
//           // ],
//         ),
//         isActive: widget.stepCount >= 1,
//         state: widget.stepCount == 1
//             ? StepState.editing
//             : widget.stepCount < 1
//                 ? StepState.disabled
//                 : StepState.complete,
//       ),
//       Step(
//         title: new Text("Personal information"),
//         content: Column(
//           children: <Widget>[
//             TextFormField(
//               decoration: InputDecoration(labelText: 'Account No'),
//             ),
//             TextFormField(
//               decoration: InputDecoration(labelText: 'IFSC Code'),
//             ),
//           ],
//         ),
//         isActive: widget.stepCount >= 2,
//         state: widget.stepCount == 2
//             ? StepState.editing
//             : widget.stepCount < 2
//                 ? StepState.disabled
//                 : StepState.complete,
//       ),
//       Step(
//         title: new Text("Password setup"),
//         content: Column(
//             // children: <Widget>[
//             //   TextFormField(
//             //     decoration: InputDecoration(labelText: 'Account No'),
//             //   ),
//             //   TextFormField(
//             //     decoration: InputDecoration(labelText: 'IFSC Code'),
//             //   ),
//             // ],
//             ),
//         isActive: widget.stepCount >= 3,
//         state: widget.stepCount == 3
//             ? StepState.editing
//             : widget.stepCount < 3
//                 ? StepState.disabled
//                 : StepState.complete,
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Stepper(
//       type: StepperType.vertical,
//       steps: getSteps(),
//       currentStep: widget.stepCount,
//       onStepTapped: (int step) {
//         setState(() {
//           currentStep = step;
//         });
//       },
//       onStepCancel: () {
//         // widget.stepCount > 0 ? setState(() =>  currentStep -= 1) : null;
//       },
//       onStepContinue: () {
//         // currentStep < 3 ? setState(() => widget.stepCount += 1) : null;
//       },
//     );
//   }
// }
