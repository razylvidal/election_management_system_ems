import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/hompage.dart';
import 'package:election_management_system_ems/Screens/SCE/login.dart';
import 'package:flutter/material.dart';

AppBar TopNavBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
 AppBar(
       backgroundColor: Color(0xFF232323),
          shadowColor: Colors.grey,
          leadingWidth: 300,
          toolbarHeight: 100,
          elevation: 5,
      leading: Row(
        children: [InkWell(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              }, // Image tapped
              splashColor: Colors.white10, // Splash color over image
              child: Ink.image(
                //fit: BoxFit.cover, // Fixes border issues
                width: 300,
                height: 200,
                image: AssetImage(
                  'assets/UNCHeaderImg.png',
                  
                ),
              ),
            ),
        
      ]
      ),
      actions: <Widget>[
        TextButton.icon(
            onPressed: () {
               Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));

            },
            icon:   Icon(Icons.exit_to_app, color: Colors.red,),
            label: Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 20.0)),

      ]
    
    );
 