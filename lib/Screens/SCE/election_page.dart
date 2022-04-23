import 'package:election_management_system_ems/Constant/style.dart';
import 'package:flutter/material.dart';

class ElectionPage extends StatelessWidget {
  const ElectionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: mustard,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Text('election'),
    
    );
  }
}