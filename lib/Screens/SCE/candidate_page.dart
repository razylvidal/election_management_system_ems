import 'package:election_management_system_ems/Constant/style.dart';
import 'package:flutter/material.dart';

class CandidatePage extends StatelessWidget {
  const CandidatePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Text('candidate'),
    
    );
  }
}