import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Text('overview'),
    );
  }
}