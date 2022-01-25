import 'package:flutter/material.dart';
import 'package:flutter_crm_test/screen/user_installation_screen_mobile/components/body2.dart';

class UserInstallationScreen2 extends StatelessWidget {
  const UserInstallationScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        // title: Text('App Bar!'),
        flexibleSpace: const Image(
          image: AssetImage('assets/images/appbar.png'),
          fit: BoxFit.cover,
          //height: 120,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Center(child: Body2()),
    );
  }
}
