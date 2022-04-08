

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/dashboard_page.dart';
import 'package:election_management_system_ems/Screens/SCE/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
    appBar: AppBar(
       backgroundColor:darkBlue,
          shadowColor: Colors.grey,
          leadingWidth: 250,
          toolbarHeight: 100,
          elevation: 5,
      leading: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 50.0),
            child: InkWell(
              onTap: () {
               Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
              }, // Image tapped
              splashColor: Colors.white10, // Splash color over image
              child: Ink.image(
                //fit: BoxFit.cover, // Fixes border issues
                width: 150,
                height: 130,
                image: AssetImage(
                  'assets/emsLogo.png',
                  
                ),
              ),
            ),
          ),
      ]
      ),
       actions: <Widget>[
         Icon(Icons.dashboard_rounded, color: mustard,),
          TextButton(
            onPressed: () {
              body: Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DashboardPage()));

            },
            child: const Text('Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17.0
              ),
              ),
          ),
          Padding(padding: EdgeInsets.only(right: 20.0)),
          Icon(Icons.manage_accounts, color: mustard,),
          TextButton(
            onPressed: () {},
            child: const Text('Accounts',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17.0
              ),
            ),
          ),
           Padding(padding: EdgeInsets.only(right: 20.0)),
          Icon(Icons.exit_to_app, color: mustard,),
          TextButton(
            onPressed: () {
               Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginPage()));

            },
            child: const Text(
              'Sign Out',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 20.0)),
        ],
    ),
    body: DashboardPage(),
    
    );
  }
}