import 'package:election_management_system_ems/Constant/style.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   AddUser({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 30)),
              Container(
                  height: 450,
                  width: 800,
                  decoration: BoxDecoration(  
                  border: Border.all(color: Colors.grey, width: 1),  
                  borderRadius: BorderRadius.circular(10), 
                  color: Colors.white,
                
                  ),
                  child: Padding(padding: EdgeInsets.only(top: 35.0,left: 60.0,right: 60.0),
                  child: Column(
                    children: [
                        Padding(padding: EdgeInsets.only(bottom: 25.0),
                        child: Text(
                          'Add User Account',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                  //username input
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Username : ', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )
                        )
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                            decoration: InputDecoration(
                              prefixText: '   ',
                              suffixIcon: Icon(Icons.person_outline_rounded),
                              enabledBorder: OutlineInputBorder(

                                borderSide: BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                        )          
                      ),

                    ],
                  ),
                  //password input
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Password : ', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )
                        )
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                           obscureText: true,
                            decoration: InputDecoration(
                               prefixText: '   ',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  
                                },
                                icon: Icon(Icons.visibility_off_outlined),
                                ),
                              enabledBorder: OutlineInputBorder(

                                borderSide: BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                        )          
                      ),

                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                      children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'Email Address : ', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )
                        )
                      ),
                      Expanded(
                        flex: 3,
                        child: TextField(
                          
                            decoration: InputDecoration(
                               prefixText: '   ',
                              suffixIcon: Icon(Icons.assignment_ind_outlined),
                              enabledBorder: OutlineInputBorder(

                                borderSide: BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                        )          
                      ),
                    ],
                  ),
                  //user type input
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Row(
                    children: [
                       Expanded(
                        child: Text(
                          'User Type : ', 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )
                        )
                      ),
                      Expanded(
                        flex: 3,
                        child: User(),
                      )
                    ],
                  ),
                  //add user button
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                   Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              color: mustard,
                              borderRadius: BorderRadius.circular(20),
                                boxShadow: const [  
                                  BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 1.0,
                                ), 
                              ]
                            ),    
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              
                        
                            },
                            child: const Text(
                              'Add User',
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 17,
                                fontWeight: FontWeight.w900
                                ),
                            ),
                          ),
                        ),
                  ]
                ),
              ),
              )
            ],
            )
      ),
      
    );
  }
}

class User extends StatefulWidget {
  const User({ Key? key }) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
 String? selectedValue = 'Admin';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _dropdownFormKey,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField(

                decoration: InputDecoration(
                   prefixText: '   ',
                  enabledBorder: OutlineInputBorder(

                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                //validator: (value) => value == null ? "Select a country" : null,
                dropdownColor: Colors.white,
                value: selectedValue,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    child: Text(
                      'Admin',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    value: 'Admin',
                  ),
                
                   DropdownMenuItem(
                    child: Text(
                      'Campaign Manager',
                       style: TextStyle(
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    value: 'Campaign Manager',
                    )
                ]),
            
          ]
        )
      );
  }
}

