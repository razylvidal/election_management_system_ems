import 'package:election_management_system_ems/Constant/controllers.dart';
import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class VertticalMenuItem extends StatelessWidget {
  final String itemName;
  //final Function onTap;
  const VertticalMenuItem({Key? key, required this.itemName, /*this.onTap*/})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
        onTap: (){
           if(itemName == OverviewPageRoute){
                      //TODO:: go to authentication page
                    }

                    if(!menuController.isActive(itemName)){
                      menuController.changeActiveitemTo(itemName);
                     
                    }
                    navigationController.navigateTo(itemName);
        },
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
              color: menuController.isHovering(itemName)
                  ? Colors.white.withOpacity(.1)
                  : Colors.transparent,
              child: Row(
                children: [
                  Visibility(
                    visible: menuController.isHovering(itemName) ||
                        menuController.isActive(itemName),
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Container(
                      width: 3,
                      height: 72,
                      color: mustard,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: menuController.returnIconFor(itemName),
                          ),
                         if(!menuController.isActive(itemName))
                        Flexible(child: CustomText(text: itemName , color: menuController.isHovering(itemName) ?  Colors.white : Colors.grey, size: 18, weight: FontWeight.bold,))
                        else
                        Flexible(child: CustomText(text: itemName , color:  Colors.white , size: 20, weight: FontWeight.bold,))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}