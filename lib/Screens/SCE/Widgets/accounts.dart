

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/add_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.0),
        Padding(padding: EdgeInsets.only(left: 50), 
        child: Text('SSG Election 2022',style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),)),
        SizedBox(height: 20.0),
        Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 50)),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                label: Text('Search'),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          
          Space(),
          Container(
            height: 50.0,
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
          child: FlatButton.icon(
            icon: Icon(
              Icons.person_add_alt_rounded,
              color: Colors.white,

            ),
          label: const Text(
            'Add User',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (_) => AddUser()));
          },
            )
          ),
          Padding(padding: EdgeInsets.only(left: 100)),
        ],
      ),
      SizedBox(height: 20.0),
           Container(
             height: 350.0,
            child: SingleChildScrollView(
             child:  Padding(padding: EdgeInsets.only(left: 50.0,  right: 100.0),
              child: AccountList(),
           )
           )
           )

      ]
    );
  }
}

class Space extends StatefulWidget {
  const Space({ Key? key }) : super(key: key);

  @override
  State<Space> createState() => _SpaceState();
}

class _SpaceState extends State<Space> {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context)) {
      return SizedBox(width: 200);
    } else {
      return SizedBox(width: 70);
    }
  
  }
}

class AccountList extends StatefulWidget {
  const AccountList({Key? key}) : super(key: key);

  @override
  _AccountListState createState() => _AccountListState();
}

class _AccountListState extends State<AccountList> {
  // Generate a list of fiction prodcts
  final List<Map<String, dynamic>> _allCandidates = [
     {"accountId": "1", "username": "FlorianRecto","password": " 123dsf4ad56", "userType": "Campaign Manager", "email": "flor@unc.edu.ph"},
     {"accountId": "2", "username": "BrianMacatangay",  "password": " d2f5421d", "userType": "Campaign Manager", "email": "brian@unc.edu.ph"},
     {"accountId": "3", "username": "RazylVidal",  "password": " dsdf4s5fs5f", "userType": "Campaign Manager", "email": "razyl@unc.edu.ph"},
     {"accountId": "4", "username": "MichaelJudeJacinto", "password": "fsd45417fd", "userType": "SCE Admin", "email": "ong@unc.edu.ph"},
     {"accountId": "5", "username": "IosefTario",  "password": "sf54s6df4", "userType": "SCE Admin", "email": "iosef@unc.edu.ph"},
     {"accountId": "6", "username": "RandelReyes", "password": "sd8f48s5f", "userType": "SCE Admin", "email": "randel@unc.edu.ph"},
     {"accountId": "7", "username": "JonathanGuaves", "password": "fsd84f8s5", "userType": "SCE Admin", "email": "jonathan@unc.edu.ph"},
     {"accountId": "8", "username": "JVAborde", "password": "sdf84s8", "userType": "SCE Admin", "email": "jv@unc.edu.ph"},
  ];


  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allCandidates;
    super.initState();
  }
  Widget build(BuildContext context) {
    return SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: DataTable(
              
              headingRowColor: MaterialStateProperty.all(Colors.red[200]),
              columns: [
                const DataColumn(label: Text('AccountID')),
                const DataColumn(label: Text('Userame')),
                const DataColumn(label: Text('Password')),
                const DataColumn(label: Text('User Type')),
                const DataColumn(label: Text('Email Address')),
               
              ],
              rows: _allCandidates.map((item) {
                return DataRow(cells: [
                  DataCell(Text(item['accountId'].toString())),
                  DataCell(Text(item['username'])),
                   DataCell(Text(item['password'].toString())),
                    DataCell(Text(item['userType'].toString())),
                     DataCell(Text(item['email'].toString(),)),
                    
                ],
                onLongPress: (){
                }
                
                );
              }).toList(),
            ),
          ),
        );
  }
}