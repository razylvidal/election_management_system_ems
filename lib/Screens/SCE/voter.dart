import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:flutter/material.dart';

class VoterPage extends StatelessWidget {
  const VoterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
          child: FlatButton.icon(
            icon: Icon(
              Icons.arrow_circle_down_outlined,
              color: Colors.white,

            ),
          label: const Text(
            'Import',
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
         Padding(padding: EdgeInsets.only(right: 170.0)),
             ],
           ),
           SizedBox(height: 20.0),
           Container(
             height: 350.0,
            child: SingleChildScrollView(
             child:  Padding(padding: EdgeInsets.only(left: 50.0,  right: 100.0),
              child: VoterList(),
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


class VoterList extends StatefulWidget {
  const VoterList({Key? key}) : super(key: key);

  @override
  _VoterListState createState() => _VoterListState();
}

class _VoterListState extends State<VoterList> {
  // Generate a list of fiction prodcts
  final List<Map<String, dynamic>> _allCandidates = [
     {"voterId": "18-123456", "name": "Floriane Mae Recto","gradeLevel": " 12 - STEM", "email": "flor@unc.edu.ph", "status": "Done"},
     {"voterId": "15-100245", "name": "Brian Macatangay",  "gradeLevel": " 12 - ABM", "email": "brian@unc.edu.ph", "status": "To Vote"},
     {"voterId": "18-11094", "name": "Razyl Abbygail Vidal",  "gradeLevel": " 12 - GAS", "email": "razyl@unc.edu.ph", "status": "Done"},
     {"voterId": "15-102453", "name": "Michael Jude Jacinto", "gradeLevel": " 12 - TVL", "email": "ong@unc.edu.ph", "status": "To Vote"},
     {"voterId": "18-182450", "name": "Iosef Tario",  "gradeLevel": " 12 - ABM", "email": "iosef@unc.edu.ph", "status": "Done"},
     {"voterId": "16-215408", "name": "Randel Reyes", "gradeLevel": " 12 - STEM", "email": "randel@unc.edu.ph", "status": "To Vote"},
     {"voterId": "15-421058", "name": "Jonathan Guaves", "gradeLevel": " 12 - TVL", "email": "jonathan@unc.edu.ph", "status": "To Vote"},
     {"voterId": "17-100642", "name": "John Vincent Aborde", "gradeLevel": " 12 - TVL", "email": "jv@unc.edu.ph", "status": "Done"},
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
                const DataColumn(label: Text('VoterID')),
                const DataColumn(label: Text('Name')),
                const DataColumn(label: Text('Grade Level')),
                const DataColumn(label: Text('Email Address')),
                const DataColumn(label: Text('Status')),
               
              ],
              rows: _allCandidates.map((item) {
                return DataRow(cells: [
                  DataCell(Text(item['voterId'].toString())),
                  DataCell(Text(item['name'])),
                   DataCell(Text(item['gradeLevel'].toString())),
                    DataCell(Text(item['email'].toString())),
                     DataCell(Text(item['status'].toString(),)),
                    
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