import 'package:election_management_system_ems/Backend/CandidateOperation.dart';
import 'package:election_management_system_ems/Models/ResultModel.dart';
import 'package:flutter/material.dart';

class ShsResult extends StatelessWidget {
  const ShsResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: 30.0,
            ),
            DefaultTextStyle(
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                child: Text('SSG Election 2022')),
            SizedBox(
              height: 30.0,
            ),
            TabulationForm(),
            SizedBox(
              height: 30.0,
            ),
            Row(children: [
              Container(
                width: 100,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                // ignore: deprecated_member_use
                child: FlatButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.white,
                    ),
                    label: Text('Back',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
              ),
            ])
          ])),
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
  var x = CandidateOperation();
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 370,
        child: SingleChildScrollView(
          child: FutureBuilder<List<ResultModel>>(
            future: x.getVoteResult(),
            builder: (context, snaphot) {
              if (!snaphot.hasData) {
                return const CircularProgressIndicator();
              }

              if (snaphot.hasData) {
                return DataTable(
                  columnSpacing: 10,
                  border: TableBorder.all(),
                  headingRowColor: MaterialStateProperty.all(Colors.red[200]),
                  columns: [
                    const DataColumn(label: Text('Position')),
                    const DataColumn(label: Text('Candidates')),
                    const DataColumn(label: Text('Total No. of Votes')),
                    const DataColumn(label: Text('Percentage')),
                  ],
                  rows: snaphot.data!.map((item) {
                    return DataRow(
                      cells: [
                        DataCell(Text(item.getPosition)),
                        DataCell(
                            Text('${item.getFirstName} ${item.getLastName}')),
                        DataCell(Text(item.getTotalVotes.toString())),
                        DataCell(Text('100%')),
                      ],
                    );
                  }).toList(),
                );
              }

              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
