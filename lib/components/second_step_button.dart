import 'package:flutter/material.dart';

class SecondStepButton extends StatelessWidget {
  final String routeName;
  final Color textColor;
  final Color buttonBackgroundColor;
  final String text;
  final bool checked;
  final double right, top;
  final double paddingHorizontal;
  final double textFontSize;
  const SecondStepButton({
    Key? key,
    required this.checked,
    required this.routeName,
    required this.textColor,
    required this.buttonBackgroundColor,
    required this.text,
    this.right = 28,
    this.top = 60,
    this.paddingHorizontal = 15,
    this.textFontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 36,
      margin: EdgeInsets.fromLTRB(0, top, right, 0),
      child: Align(
        alignment: Alignment.bottomRight,
        // margin: EdgeInsets.only(right: 0),
        //margin: EdgeInsets.fromLTRB(0, 100, 100, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: ElevatedButton(
            child: Text(
              text,
              style: TextStyle(color: textColor),
            ),
            onPressed: (checked != true)
                ? null
                : () {
                    Navigator.of(context).pushNamed(routeName);
                  },
            style: ElevatedButton.styleFrom(
                primary: buttonBackgroundColor,
                padding: EdgeInsets.symmetric(
                    horizontal: paddingHorizontal, vertical: 10),
                textStyle: TextStyle(
                    color: textColor,
                    fontSize: textFontSize,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    );
  }
}
