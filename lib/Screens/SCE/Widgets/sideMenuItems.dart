import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/HorizontalMenuItems.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/vertical_menu_items.dart';
import 'package:flutter/material.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  //final Function onTap;

  const SideMenuItem({ Key? key,required this.itemName,  /*required this.onTap*/}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      if(ResponsiveWidget.isSmallScreen(context)){
      return VertticalMenuItem(itemName: itemName, /*onTap: onTap,*/);
    }else{
      return HorizontalMenuItems(itemName: itemName, /*onTap: onTap,*/);
    }
    
  }
}