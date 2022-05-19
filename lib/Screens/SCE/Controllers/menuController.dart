import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController{

  static MenuController instance = Get.find(); 
  var activeItem = ElectionPageRoute.obs;
  var hoverItem = ''.obs;


  changeActiveitemTo(String itemName){
      activeItem.value = itemName;
  }

  onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName){
    switch(itemName){
      case ElectionPageRoute:
        return _customIcon(Icons.how_to_vote_rounded,itemName);
      case CandidatePageRoute:
        return _customIcon(Icons.person,itemName);
      case VoterPageRoute:
        return _customIcon(Icons.people_alt,itemName);
      case AccountPageRoute:
        return _customIcon(Icons.manage_accounts_sharp,itemName);
        
      default:
        return _customIcon(Icons.dashboard, itemName);

    }
  }

  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)) 
      return Icon(icon, 
      size: 25, 
      color: mustard);

      return Icon(icon, color: isHovering(itemName) ? mustard : Colors.grey, size: 22,);
  }

}