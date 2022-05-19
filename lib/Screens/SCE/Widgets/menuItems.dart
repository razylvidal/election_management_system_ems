
import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/sideMenuItems.dart';
import 'package:election_management_system_ems/Screens/SCE/electionPage.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(

      color: darkBlue,
      child: ListView (children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [ 
            Row(
              children: [
                /*SizedBox(
                  width: _width / 48,
                ),*/
               
                /*Flexible(child: CustomText(
                  text: 'Dashboard',
                  size: 20,
                  weight: FontWeight.bold,
                  color: Colors.black,
                  )
                ),*/

               // SizedBox(width: _width / 48,),
              ],
            ),
            
        
          ]
        ),
        //SizedBox(height: 40,),
            Divider(color: mustard.withOpacity(.1),),
            Column(
              mainAxisSize: MainAxisSize.min,
              children:
                sideMenuItems.map((itemName) => SideMenuItem(
                  itemName: itemName == ElectionPage ? 'Election' : itemName,

                 /* onTap: (){
                    if(itemName == AuthenticationPageRoute){
                      //TODO:: go to authentication page
                    }

                    if(!menuController.isActive(itemName)){
                      menuController.changeActiveitemTo(itemName);
                      if(ResponsiveWidget.isSmallScreen(context))
                      Get.back();
                      navigationController.navigateTo(itemName);
                    }
                  }, */
                  
                  )
                ).toList(),

          
            ),
      ],
    )
      
    );
  }
}