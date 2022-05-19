import 'package:election_management_system_ems/Screens/SCE/Controllers/menuController.dart';
import 'package:election_management_system_ems/Screens/SCE/Controllers/navigation_controller.dart';
import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/add_user.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/create_election.dart';
import 'package:election_management_system_ems/Screens/SCE/hompage.dart';
import 'package:election_management_system_ems/Screens/SCE/menu.dart';
import 'package:election_management_system_ems/Screens/SCE/electionPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Screens/SCE/login.dart';


void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Election Management System',
      home: SideMenu()

    );
  }
}