import 'dart:math';

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/result.dart';
import 'package:election_management_system_ems/Screens/SCE/add_candidate.dart';
import 'package:election_management_system_ems/Screens/SCE/hompage.dart';
import 'package:flutter/material.dart';

class CandidatePage extends StatelessWidget {
  const CandidatePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
       child: Column(
         children: [
           SizedBox(height: 30.0),
           Row(
             children: [
                Padding(padding: EdgeInsets.only(left: 50.0)),
                Text(
               'Election Title',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30.0,
               ),
             ),
             ] 
           ),
           Padding(padding: EdgeInsets.only(top: 30.0)),
           Row(
             children: [
               Padding(padding: EdgeInsets.only(left: 50.0)),
          Expanded(child: 
          TextField(
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
            'Add Candidates',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              color: Colors.white,
            ),
          ),
          onPressed: (){
             Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => AddCandidatePage()));
          },
            )
          ),
         Padding(padding: EdgeInsets.only(right: 100.0)),
             ],
           ),
           SizedBox(height: 20.0),
           Container(
             height: 350.0,
            child: SingleChildScrollView(
             child:  Padding(padding: EdgeInsets.only(left: 50.0,  right: 100.0),
              child: CandidateList(),
           )
           )
           )
         ],
       ),

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


class CandidateList extends StatefulWidget {
  const CandidateList({Key? key}) : super(key: key);

  @override
  _CandidateListState createState() => _CandidateListState();
}

class _CandidateListState extends State<CandidateList> {
  // Generate a list of fiction prodcts
  final List<Map<String, dynamic>> _allCandidates = [
     {"position": "President", "name": "Floriane Mae Recto", "partylist": "TINGOG", "gradeLevel": " 12 - STEM", "email": "flor@unc.edu.ph", "status": "Verified"},
     {"position": "President", "name": "Brian Macatangay", "partylist": "PADAYON", "gradeLevel": " 12 - ABM", "email": "brian@unc.edu.ph", "status": "Verified"},
     {"position": "Vice President", "name": "Razyl Abbygail Vidal", "partylist": "PADAYON", "gradeLevel": " 12 - GAS", "email": "razyl@unc.edu.ph", "status": "Verified"},
     {"position": "Vice President", "name": "Michael Jude Jacinto", "partylist": "TINGOG", "gradeLevel": " 12 - TVL", "email": "ong@unc.edu.ph", "status": "Verified"}
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
          child: Container(
            child: DataTable(
              
              headingRowColor: MaterialStateProperty.all(Colors.red[200]),
              columns: [
                const DataColumn(label: Text('Position')),
                const DataColumn(label: Text('Name')),
                const DataColumn(label: Text('Partylist')),
                const DataColumn(label: Text('Grade Level')),
                const DataColumn(label: Text('Email Address')),
                const DataColumn(label: Text('Status')),
               
              ],
              rows: _allCandidates.map((item) {
                return DataRow(
                  cells: [
                  DataCell(Text(item['position'].toString())),
                  DataCell(Text(item['name'])),
                  DataCell(Text(item['partylist'].toString())),
                   DataCell(Text(item['gradeLevel'].toString())),
                    DataCell(Text(item['email'].toString())),
                     DataCell(Text(item['status'].toString(),)),
                    
                ],
                onLongPress: (){
                            Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => ResultPage()));
                          },
                
                );
              }).toList(),
            ),
          ),
        );
  }
}