import 'package:election_management_system_ems/Constant/style.dart';
import 'package:flutter/material.dart';

class ElectionPage extends StatelessWidget {
  const ElectionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          const Padding(padding: EdgeInsets.only(top:85.0, left: 40.0)),
          DefaultTextStyle(
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: blue
              ), 
              child: Text('Election Title')
            ),
            Row(
              children: [
               


              ],
            ),
        ]
      ),
      
    );
  }
}