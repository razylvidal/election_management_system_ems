

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/add_user.dart';
import 'package:election_management_system_ems/Screens/SCE/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  
   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   AccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: Row(
        children: [
          SizedBox(height: 100),
          Padding(padding: EdgeInsets.only(left: 100)),
          Expanded(
           flex: 2,
            child: TextField(
              decoration: InputDecoration(
                label: Text('Search'),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Space(),
          Container(
            height: 50.0,
            decoration: BoxDecoration(
            color: mustard,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [  
              BoxShadow(
                color: Colors.black26,
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
              ), 
            ]
            ),  
          // ignore_for_file: deprecated_member_use  
          child: FlatButton.icon(
            icon: Icon(
              Icons.person_add_alt_rounded,
              color: Colors.white,

            ),
          label: const Text(
            'Add User',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddUser()));
          },
            )
          ),
          Padding(padding: EdgeInsets.only(left: 100)),
        ],
      )
    );
  }
}

class Space extends StatefulWidget {
  const Space({ Key? key }) : super(key: key);

  @override
  State<Space> createState() => _SpaceState();
}

class _SpaceState extends State<Space> {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context)) {
      return SizedBox(width: 400);
    } else {
      return SizedBox(width: 70);
    }
  
  }
}