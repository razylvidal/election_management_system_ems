import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/app_bar.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  
   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   AccountPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      body: Row(
        children: [
          SizedBox(height: 100),
          Padding(padding: EdgeInsets.only(left: 100)),
          Expanded(
           flex: 4,
            child: TextField(
              decoration: InputDecoration(
                label: Text('Search'),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 200)),
          Expanded(
            flex: 1,
            child: FloatingActionButton.extended(
      
              backgroundColor: mustard,
                  icon: Icon(
                    Icons.person_add_alt_rounded,
                    color: Colors.white,

                  ),
                  label: Text(
                    'Add User',
                
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white,

                    ),
                    
                    
                  ),
              onPressed: (){},
            )
          ),
          Padding(padding: EdgeInsets.only(left: 100)),
        ],
      )
    );
  }
}