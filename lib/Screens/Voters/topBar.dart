

import 'package:flutter/material.dart';

AppBar TopNavigation(BuildContext context, GlobalKey<ScaffoldState> key) =>
 AppBar(
       backgroundColor: Color(0xFF232323),
          shadowColor: Colors.grey,
          leadingWidth: 350,
          toolbarHeight: 100,
          elevation: 5,
      leading: Row(
        children: [
          SizedBox(
            width: 300,
            height: 100,
            child: Image.asset('assets/UNCHeaderImg.png'),
          )
        
      ]
      ),
    
  
    );
 