import 'package:election_management_system_ems/Constant/style.dart';
import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top:35.0)),
          Container(
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: blue
              ), 
              child: Text('Overview')),
          )

        ]
      ),
      )
    );
  }
}