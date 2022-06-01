import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/result.dart';
import 'package:flutter/material.dart';

class AddCandidatePage extends StatelessWidget {
  const AddCandidatePage({ Key? key }) : super(key: key);

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
               'SSG Election 2022',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30.0,
                 color: blue,
               ),
             ),
             ] 
           ),
           Padding(padding: EdgeInsets.only(top: 30.0)),
           Row(
             children: [
               Padding(padding: EdgeInsets.only(left: 50.0)),
          Container(
            width: 500.0,
            height: 50.0,
            child: 
          TextField(
              decoration: InputDecoration(
                label: Text('Search'),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          
        
             ],
           ),
           SizedBox(height: 20.0),
           CandidateList(),
           SizedBox(height: 20,),
            Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 50)),
            Container(
            width: 100,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            // ignore: deprecated_member_use
            child: FlatButton.icon(
              onPressed: (){
                 Navigator.pop(context);
              }, 
              icon: Icon(Icons.chevron_left_rounded, color: Colors.white,), 
              label: Text('Back',
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold))),
          ),
          ]
          ),
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
     {"position": "President", "name": "Floriane Mae Recto", "partylist": "TINGOG", "gradeLevel": " 12 - STEM", "email": "flor@unc.edu.ph", "status": "Approve"},
     {"position": "President", "name": "Brian Macatangay", "partylist": "PADAYON", "gradeLevel": " 12 - ABM", "email": "brian@unc.edu.ph", "status": "Approve"},
     {"position": "Vice President", "name": "Razyl Abbygail Vidal", "partylist": "PADAYON", "gradeLevel": " 12 - GAS", "email": "razyl@unc.edu.ph", "status": "Approve"},
     {"position": "Vice President", "name": "Michael Jude Jacinto", "partylist": "TINGOG", "gradeLevel": " 12 - TVL", "email": "ong@unc.edu.ph", "status": "Approve"}
  ];


  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allCandidates;
    super.initState();
  }
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 50, right: 50,),
      child: SizedBox(
          width: double.infinity,
            height: 310,
          child: SingleChildScrollView(
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
                return DataRow(cells: [
                  DataCell(Text(item['position'].toString())),
                  DataCell(Text(item['name'])),
                  DataCell(Text(item['partylist'].toString())),
                   DataCell(Text(item['gradeLevel'].toString())),
                    DataCell(Text(item['email'].toString())),
                     DataCell(Container(
                       width: 80.0,
                       height: 25.0,
                      
                       decoration: BoxDecoration(
                          color: Colors.red,
                          
                          borderRadius: BorderRadius.circular(20), 

                       ),
                       child: FlatButton(
                         onPressed: (){}, 
                         child: Text(item['status'].toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                         )
                         ),
                     )
                     ),
                     
                  
                ],
                onLongPress: (){
                            Navigator.push(
                                  context, MaterialPageRoute(builder: (_) => ResultPage()));
                          },
                
                );
              }).toList(),
            ),
          ),
      )
        );
  }
}