import 'package:flutter/material.dart';

class ShsResult extends StatelessWidget {
  const ShsResult({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 30.0,),
          DefaultTextStyle(
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0), 
            child: Text('SSG Election 2022')),
          SizedBox(height: 30.0,),
          TabulationForm(),
          SizedBox(
            height: 30.0,
          ),
          Row(
          children: [Container(
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
          )
          ]
        
        )

      ),
    );
  }
}


class TabulationForm extends StatefulWidget {
  const TabulationForm({Key? key}) : super(key: key);

  @override
  _TabulationFormState createState() => _TabulationFormState();
}

class _TabulationFormState extends State<TabulationForm> {
 
  // Generate a list of fiction prodcts
  final List<Map<String, dynamic>> _allCandidates = [
    {'position': 'President', 'candidates': 'Brian Macatangay (PADAYON)', 'stem11' : 80, 'gas11' : 71, 'abm11' : 84 , 'tvl11' : 96, 'stem12' : 80, 'gas12' : 89, 'abm12' : 78,'tvl12' : 63, 'totalNum' : 304, 'percentage' : 85.52 },
    {'position': 'President', 'candidates': 'Floriane Mae Recto (TINGOG)', 'stem11' : 90, 'gas11' : 88, 'abm11' : 96 , 'tvl11' : 101, 'stem12' : 79, 'gas12' : 90, 'abm12' : 56,'tvl12' : 99, 'totalNum' : 583, 'percentage' : 90.35 },
    {'position': 'Vice-President', 'candidates': 'Razyl Abbygail Vidal (TINGOG)', 'stem11' : 100, 'gas11' : 90, 'abm11' : 98 , 'tvl11' : 110, 'stem12' : 98, 'gas12' : 75, 'abm12' : 79,'tvl12' : 80, 'totalNum' : 732, 'percentage' : 95.01 },
    {'position': 'Vice-President', 'candidates': 'Renz Ibarbia (PADAYON)', 'stem11' : 88, 'gas11' : 73, 'abm11' : 93 , 'tvl11' : 99, 'stem12' : 80, 'gas12' : 76, 'abm12' : 50,'tvl12' : 90, 'totalNum' : 566, 'percentage' : 89.35 },
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
            width: MediaQuery.of(context).size.width,
            height: 370,
            child: SingleChildScrollView(
              child: DataTable(
              columnSpacing: 10,
              border: TableBorder.all(),
              headingRowColor: MaterialStateProperty.all(Colors.red[200]),
              columns: [
                const DataColumn(label: Text('Position')),
                const DataColumn(label: Text('Candidates')),
                const DataColumn(label: Text('11-STEM')),
                const DataColumn(label: Text('11-GAS')),
                const DataColumn(label: Text('11-ABM')),
                const DataColumn(label: Text('11-TVL')),
                const DataColumn(label: Text('12-STEM')),
                const DataColumn(label: Text('12-GAS')),
                const DataColumn(label: Text('12-ABM')),
                const DataColumn(label: Text('12-TVL')),
                const DataColumn(label: Text('Total No. of Votes')),
                const DataColumn(label: Text('Percentage')),
               
              ],
              rows: _allCandidates.map((item) {
                return DataRow(
                  cells: [
                  DataCell(Text(item['position'].toString())),
                  DataCell(Text(item['candidates'].toString())),
                  DataCell(Text(item['stem11'].toString())),
                  DataCell(Text(item['gas11'].toString())),
                  DataCell(Text(item['abm11'].toString())),
                  DataCell(Text(item['tvl11'].toString())),
                  DataCell(Text(item['stem12'].toString())),
                  DataCell(Text(item['gas12'].toString())),
                  DataCell(Text(item['abm12'].toString())),
                  DataCell(Text(item['tvl12'].toString())),
                  DataCell(Text(item['totalNum'].toString(), )),
                  DataCell(Text(item['percentage'].toString())),
                    
                ],
               
                );
              
              }).toList(),
            ),
            )
          ),
        );
  }
}