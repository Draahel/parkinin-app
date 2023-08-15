import 'package:flutter/material.dart';
import 'package:navigator/helpers/navigation.dart';
import 'package:navigator/widgets/custom_roles_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        widthFactor: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomRolesButton(
              icon: Icons.admin_panel_settings, 
              value: 'Admin',
              onPressed: ()=> navigator(context, '/dashboard'),
            ),
            const SizedBox(height: 20,),
            CustomRolesButton(
              icon: Icons.account_circle_rounded, 
              value: 'Guard',
              onPressed: ()=> navigator(context, '/scan'),
            ),
          ],
        ),
      ),
    );
  }

}

