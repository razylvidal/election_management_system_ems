import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/sideMenuItems.dart';
import 'package:election_management_system_ems/Screens/SCE/electionPage.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.black87,
        child: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: 200,
              height: 100,
              child: Image.asset(
                'assets/emsLogo.png',
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: sideMenuItems
                  .map((itemName) => SideMenuItem(
                        itemName:
                            itemName == ElectionPage ? 'Election' : itemName,
                      ))
                  .toList(),
            ),
          ],
        ));
  }
}
