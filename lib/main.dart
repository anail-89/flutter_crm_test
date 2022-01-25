import 'package:flutter/material.dart';
import 'package:flutter_crm_test/screen/user_installation_screen_mobile/user_installation_screen1.dart';
import 'package:flutter_crm_test/screen/user_installation_screen_mobile/user_installation_screen2.dart';
import 'constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 24,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
      ),
      home: UserInstallationScreenMobile1(),
      routes: {
        '/user-installation': (ctx) => UserInstallationScreen2(),
      },
    );
  }
}
