import 'package:election_management_system_ems/Constant/style.dart';
import 'package:flutter/material.dart';

class VoterPage extends StatelessWidget {
  const VoterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blue,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Text('voter'),
    
    );
  }
}