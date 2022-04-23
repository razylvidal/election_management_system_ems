import 'package:election_management_system_ems/Screens/SCE/Widgets/viewMenuItems.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  //final Function onTap;

  const SideMenuItem({ Key? key,required this.itemName,  /*required this.onTap*/}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      return ViewMenuItems(itemName: itemName, /*onTap: onTap*/);
    
  }
}