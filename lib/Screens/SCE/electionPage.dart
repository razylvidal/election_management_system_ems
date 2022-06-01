import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/result.dart';
import 'package:election_management_system_ems/Screens/SCE/hompage.dart';
import 'package:election_management_system_ems/Screens/SCE/shs_result.dart';
import 'package:flutter/material.dart';

class ElectionPage extends StatelessWidget {
  const ElectionPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
          children: [
            const Padding(padding: EdgeInsets.only(top:85.0, left: 50.0)),
            DefaultTextStyle(
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ), 
                child: Text('SSG Election 2022')
              ),
            
          ]
        ),
        //election details
        Row(
          children: [
            Container(
              child: Column(
              children: [
                SizedBox(height:20.0),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50.0)),
                    Text(
                      'Election Name: ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                    Container(
                      width: 350.0,
                      height: 45.0,
                      child: TextField(
                                decoration: InputDecoration(
                                  prefixText: '   ',
                                  suffixIcon: Icon(Icons.ballot_outlined),
                                    enabledBorder: OutlineInputBorder(

                                      borderSide: BorderSide(color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black, width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                    )

                  ],
                ),
                 Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50.0, top: 60.0)),
                    Text(
                      'Start Date: ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 60.0, top: 60.0)),
                    Container(
                      width: 350.0,
                      height: 45.0,
                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixText: '   ',
                                         suffixIcon: IconButton(
                                            icon: Icon(Icons.date_range),
                                            onPressed: (){},
                                          ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            
                                          ),
                                        ),
                    )

                  ],
                ),
                 Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50.0, top: 55.0)),
                    const Text(
                      'End Date: ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 68.0 , top: 55.0)),
                    Container(
                      width: 350.0,
                      height: 45.0,
                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixText: '   ',
                                         suffixIcon: IconButton(
                                            icon: Icon(Icons.date_range),
                                            onPressed: (){},
                                          ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(color: Colors.black, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(color: Colors.black, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            
                                          ),
                                        ),
                    )

                  ],
                ),
                 Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 50.0, top: 55.0)),
                    const Text(
                      'Timezone: ',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 59.0 , top: 55.0)),
                    Container(
                      width: 350.0,
                      height: 45.0,
                      child: TextField(
                                        decoration: InputDecoration(
                                          prefixText: '   ',
                                         suffixIcon: IconButton(
                                            icon: Icon(Icons.timer_outlined),
                                            onPressed: (){},
                                          ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(color: Colors.black, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(color: Colors.black, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            
                                          ),
                                        ),
                    )

                  ],
                ),
                Row(
                  children: [
                              const Padding(padding: EdgeInsets.only( left: 200.0)),
                              Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [  
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                              ), 
                            ]
                            ),  
                          // ignore_for_file: deprecated_member_use  
                          child: FlatButton(
                            child: Text(
                            'Save Changes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: (){
                          },
                            )
                          ),
                          Padding(padding: EdgeInsets.only(top: 100.0, left: 50.0)),
                          Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [  
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                              ), 
                            ]
                            ),  
                          // ignore_for_file: deprecated_member_use  
                          child: FlatButton(
                            child: Text(
                            'Remove',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: (){
                          },
                            )
                          ),
                        ],
                      )
              ],
            ),
            ),
            //right side containers and button
            Padding(padding: EdgeInsets.only(left: 80.0)),
            Container(
              height: 450.0,
              width: 300.0,
              child: Column(
                children: [
                  Container(
                    height: 100.0,
                    width: 300.0,
                    decoration: BoxDecoration(  
                      borderRadius: BorderRadius.circular(10), 
                      color: Colors.red,
                       boxShadow: const [  
                        BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                      ), 
                  ]
                    
                    ),
                    child: Padding(padding: EdgeInsets.only(top: 10.0, left: 20.0),
                        child: ListTile(
                        leading: Icon(Icons.check_circle_outline_outlined, size: 40.0, color: Colors.white,),
                        title: Text('           20%', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),),
                        subtitle: Text('             Participation', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.white),),
                        )
                     )
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0, left: 80.0)),
                   Container(
                    height: 100.0,
                    width: 300.0,
                    decoration: BoxDecoration(  
                      borderRadius: BorderRadius.circular(10), 
                      color: Colors.red,
                       boxShadow: const [  
                        BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                      ), 
                     
                  ]
                    
                    ),
                     child: Padding(padding: EdgeInsets.only(top: 10.0, left: 20.0),
                        child: ListTile(
                        leading: Icon(Icons.groups_rounded, size: 40.0, color: Colors.white,),
                        title: Text('           120', style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.white),),
                        subtitle: Text('                        Voters', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal, color: Colors.white),),
                        )
                     )
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0, left: 80.0)),
                  Container(
                    height: 100.0,
                    width: 300.0,
                    decoration: BoxDecoration(  
                      borderRadius: BorderRadius.circular(10), 
                      color: Colors.red,
                       boxShadow: const [  
                        BoxShadow(
                        color: Colors.grey,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 5.0,
                      ), 
                      ]
                    ),
                    child: FlatButton.icon(
                      onPressed: (){
                         Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => ShsResult()));
                      }, 
                      icon: Icon(Icons.list, size: 40.0,color: Colors.white,), 
                      label: Text('        View Result',style: TextStyle(fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),)),
                  ),

                ],
              ),
            )
            
          ],
        )

          ],
      )
      
      
    );
  }
}
