import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/Voters/topBar.dart';
import 'package:flutter/material.dart';

class BallotPage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   BallotPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: TopNavigation(context, scaffoldKey),
       body: Container(
         
       )
    );
  }
}