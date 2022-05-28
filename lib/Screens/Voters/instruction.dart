

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/menu.dart';
import 'package:election_management_system_ems/Screens/Voters/ballot_page.dart';
import 'package:flutter/material.dart';

class InstructionPage extends StatelessWidget {
  const InstructionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
            //color: grey,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),BlendMode.dstATop),
                     image: AssetImage("assets/unc.jpg"),
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
                  border: Border.all(color: Colors.black, width: 1),  
                  borderRadius: BorderRadius.circular(25), 
                  color: Colors.white,
                 
                  ),
                  child: Row(
                    children: [
                       Container(
                            decoration: BoxDecoration(
                            color: Colors.black87,
                             borderRadius: BorderRadius.only(topLeft: Radius.circular(23.5),bottomLeft: Radius.circular(23.5),)

                          ),
                        child: SizedBox(
                          child: Image.asset('assets/emsLogo.png'),
                          width: 250,
                          height: 398,
                        )
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 35.0, right: 35.0,top: 30.0),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100,
                                child: Image.asset('Seal_of_University_of_Nueva_Caceres.png'),
                              ),
                              SizedBox(height: 25.0,),
                              DefaultTextStyle(
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  
                                ),
                                child: Text('Welcome to Election Management System'),
                              ),
                              SizedBox(height: 15),
                              DefaultTextStyle(
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal
                                ),
                                child: Text('Thank you for being part of the UNC student election process.This procedure is expected to take 30 minutes of your time. Click the button below to proceed.',
                                    textAlign: TextAlign.center
                                      
                                  
                                ),
                              ),
                              SizedBox(height: 30),
                              Container(
                                     width: 100.0,
                                     height: 30.0,
                                     decoration: BoxDecoration(
                                       color: Colors.red,
                                       borderRadius: BorderRadius.circular(20.0),
                                     ),
                                     child: TextButton(
                                    onPressed: (){
                                      Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => BallotPage()));
                                    },  
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white
                                      
                                    ),
                                    ),
                                   
                                     )
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