import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/topNavBar.dart';
import 'package:election_management_system_ems/Screens/SCE/shs_result.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(context),
      body: ShsResult(),
    );
  }
}
