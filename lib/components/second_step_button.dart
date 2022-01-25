import 'package:flutter/material.dart';

class SecondStepButton extends StatelessWidget {
  const SecondStepButton({
    Key? key,
    required this.checked,
  }) : super(key: key);

  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 60, 28, 0),
      child: Align(
        alignment: Alignment.bottomRight,
        // margin: EdgeInsets.only(right: 0),
        //margin: EdgeInsets.fromLTRB(0, 100, 100, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: ElevatedButton(
            child: const Text(
              'SETUP',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: (checked != true)
                ? null
                : () {
                    Navigator.of(context).pushNamed('/user-installation');
                  },
            style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(255, 125, 100, 1),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                textStyle: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
          ),
        ),
      ),
    );
  }
}
