import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CreateElectionPage extends StatelessWidget {
  //GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   CreateElectionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.dstATop),
                     image: AssetImage("assets/background1.jpg"),
                    ),
                  
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Padding(padding: EdgeInsets.only(top: 100.0)),
                Container(
                  height: 400,
                  width: 700,
                  decoration: BoxDecoration(  
                  border: Border.all(color: darkBlue, width: 1),  
                  borderRadius: BorderRadius.circular(5), 
                  color: Colors.white,
                 
                  ),
                  child: Row(
                    children: [
                       Container(
                            decoration: BoxDecoration(
                            color: Colors.black87

                          ),
                        child: SizedBox(
                          child: Image.asset('assets/emsLogo.png'),
                          width: 250,
                          height: 398,
                        )
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 35.0, right: 35.0, top: 45.0),
                          child: Column(
                            children: [
                              DefaultTextStyle(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                child: Text('Welcome to Election Management System'),
                              ),
                              SizedBox(height: 12),
                              DefaultTextStyle(
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal
                                ),
                                child: Text('Please provide the following details of the election.'),
                              ),
                              SizedBox(height: 30),
                              //election title
                              TextField(
                                decoration: InputDecoration(
                                  prefixText: '   ',
                                  suffixText: '   ',
                                  suffixIcon: Icon(Icons.how_to_vote_rounded),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey, width: 1),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey, width: 2),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    filled: true,
                                    hintText: 'Election Title',
                                    
                                  ),
                                ),
                                 SizedBox(height: 20),
                                 //election duration
                                 Row(
                                   children: [
                                     Expanded(
                                       child: TextField(
                                        decoration: InputDecoration(
                                          prefixText: '   ',
                                          suffixText: '   ',
                                         suffixIcon: IconButton(
                                            icon: Icon(Icons.date_range),
                                            onPressed: (){},
                                          ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey, width: 1),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey, width: 2),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            filled: true,
                                            hintText: 'Start Date',
                                            
                                          ),
                                        ),
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 15.0)),
                                     //end date
                                     Expanded(
                                       child: TextField(
                                        decoration: InputDecoration(
                                          prefixText: '   ',
                                          suffixText: '   ', 
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.date_range),
                                            onPressed: (){},
                                          ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey, width: 1),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey, width: 2),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            filled: true,
                                            hintText: 'End Date',
                                            
                                          ),
                                        ),
                                     ),

                                   ],
                                 ),
                                 SizedBox(height: 20),
                                 //timezone
                                 TextField(
                                        decoration: InputDecoration(
                                          prefixText: '   ',
                                          suffixText: '   ',
                                          suffixIcon: IconButton(
                                            icon: Icon(Icons.more_time_outlined),
                                            onPressed: (){
                                              
                                            },
                                          ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey, width: 1),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.grey, width: 2),
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            filled: true,
                                            hintText: 'Timezone',
                                            
                                          ),
                                        ),
                                 SizedBox(height: 20),
                                 //button
                                 Row(
                                   children: [
                                 Expanded(flex: 3,child: SizedBox(width: 80.0,)),
                                 Expanded(
                                   child: Container(
                                     width: 100.0,
                                     height: 30.0,
                                     decoration: BoxDecoration(
                                       color: Colors.red,
                                       borderRadius: BorderRadius.circular(20.0),
                                     ),
                                     child: TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => SideMenu()));
                                    },  
                                    child: Text(
                                      'Next',
                                      style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                      
                                    ),
                                    ),
                                   
                                   )
                                   )
                                 )
                                   ]
                                 
                                 )
                            ],
                          ),
                        )
                      ),
                 
                ],
              ),
            )
          ]
        )
      )
    );
  
  }
}

