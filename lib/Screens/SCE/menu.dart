import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/local_navigator.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/menuItems.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/topNavBar.dart';
import 'package:election_management_system_ems/Screens/SCE/candidate_page.dart';
import 'package:election_management_system_ems/Screens/SCE/hompage.dart';
import 'package:election_management_system_ems/Screens/SCE/electionPage.dart';
import 'package:flutter/material.dart';
import 'Widgets/topNavBar.dart';

class SideMenu extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopNavBar(context),
        body: Row(children: [
          Expanded(child: MenuItems()),
          Expanded(
            flex: 5,
            child: localNavigator(),
          )
        ]));
  }
}
