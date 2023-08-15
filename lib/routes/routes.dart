import 'package:flutter/material.dart';
import 'package:navigator/screens/admin/dashboard_screen.dart';
import 'package:navigator/screens/admin/register_screen.dart';
import 'package:navigator/screens/admin/update_screen.dart';
import 'package:navigator/screens/my_home_screen.dart';
import 'package:navigator/screens/security-guard/scan_screen.dart';

Map <String, WidgetBuilder> routes = {
  '/':(BuildContext context) => const MyHomePage(),
  '/scan':(BuildContext context) => const ScanPage(),
  '/dashboard':(BuildContext context) => Dashboard(),
  '/new':(BuildContext context) => const RegisterVehicle(),
  '/edit':(BuildContext context) => const Update()
  
};