import 'package:flutter/material.dart';
import 'package:flutter_crm_test/components/background.dart';
import 'package:flutter_crm_test/components/header.dart';
import 'package:flutter_crm_test/components/second_step_button.dart';

class Body1 extends StatefulWidget {
  const Body1({
    Key? key,
  }) : super(key: key);

  @override
  State<Body1> createState() => _Body1State();
}

class _Body1State extends State<Body1> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Widget text = const Text.rich(
      TextSpan(
          text:
              "There is no added root user. \nYou should install yourself as a root user. After success installation the",
          children: [
            TextSpan(
                text: " Install_Root_User.exe ",
                style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(
                text:
                    "file will be\n automatically moved to trash.\nFollow to the steps."),
          ]),
      style: TextStyle(
        color: Color.fromRGBO(10, 25, 49, 1),
        fontSize: 12,
        height: 2,
      ),
    );
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
            //alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(32, 25, 16, 0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: text,
              //  ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            // alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //  ClipRRect(
                // borderRadius: BorderRadius.circular(29),
                Transform.scale(
                  scale: 0.7,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    checkColor: Colors.white,
                    activeColor: const Color.fromRGBO(32, 80, 170, 1),
                    focusColor: Colors.lightBlue,
                    value: checked,
                    onChanged: (newValue) {
                      setState(() => checked = newValue!);
                    },
                  ),
                ),
                // ),
                const Text(
                  'Accept all terms & conditions',
                  style: TextStyle(
                    color: Color.fromRGBO(30, 80, 170, 1),
                    fontSize: 12,
                    // height: 16,
                  ),
                ),
                // const SizedBox(width: 20.0),
                // SizedBox(height: 20.0),
              ],
            ),
          ),
          SizedBox(
            // height: size.height * 0.01,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SecondStepButton(
                  checked: checked,
                  text: 'SETUP',
                  textColor: Color.fromRGBO(255, 255, 255, 1),
                  routeName: '/user-installation',
                  buttonBackgroundColor: Color.fromRGBO(255, 125, 100, 1),
                  paddingHorizontal: 10,
                  textFontSize: 12,
                ),
              ],
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
