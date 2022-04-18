import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/topNavBar.dart';
import 'package:election_management_system_ems/Screens/SCE/hompage.dart';
import 'package:flutter/material.dart';
import 'Widgets/topNavBar.dart';

class OverviewPage extends StatelessWidget {
  
   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   OverviewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(context, scaffoldKey),
      body: Container(color: mustard,),
    );
  }
}