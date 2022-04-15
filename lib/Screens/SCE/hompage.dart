

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/dashboard_page.dart';
import 'package:election_management_system_ems/Screens/SCE/app_bar.dart';
import 'package:election_management_system_ems/Screens/SCE/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: topNavigationBar(context, scaffoldKey),
    body: DashboardPage(),
    
    );
  }
}