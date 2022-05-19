import 'package:election_management_system_ems/Constant/controllers.dart';
import 'package:election_management_system_ems/Screens/SCE/Routing/router.dart';
import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigatorKey,
  initialRoute: ElectionPageRoute,
  onGenerateRoute: generateRoute,


);
