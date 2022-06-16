import 'package:election_management_system_ems/Backend/CandidateOperation.dart';
import 'package:election_management_system_ems/Models/CandidateModel.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/result.dart';
import 'package:election_management_system_ems/Screens/SCE/add_candidate.dart';
import 'package:flutter/material.dart';

class CandidatePage extends StatelessWidget {
  const CandidatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(height: 30.0),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 50.0)),
              Text(
                'SSG Election 2022',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30.0)),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 50.0),
              ),
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
                      ]),
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => AddCandidatePage()));
                    },
                  )),
              Padding(padding: EdgeInsets.only(right: 100.0)),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
              height: 350.0,
              child: SingleChildScrollView(
                  child: Padding(
                padding: EdgeInsets.only(left: 50.0, right: 100.0),
                child: CandidateList(),
              )))
        ],
      ),
    );
  }
}

class Space extends StatefulWidget {
  const Space({Key? key}) : super(key: key);

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

  final String status = '1';
}

class _CandidateListState extends State<CandidateList> {
  var candid = CandidateOperation();

  late Future<List<CandidateModel>> verifiedCandid;
  @override
  initState() {
    // at the beginning, all users are shown
    verifiedCandid = candid.getCandidates(widget.status);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FutureBuilder<List<CandidateModel>>(
        future: verifiedCandid,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            try {
              return DataTable(
                headingRowColor: MaterialStateProperty.all(Colors.red[200]),
                columns: [
                  const DataColumn(label: Text('Position')),
                  const DataColumn(label: Text('Name')),
                  const DataColumn(label: Text('Partylist')),
                  const DataColumn(label: Text('Grade Level')),
                ],
                rows: snapshot.data!.map((item) {
                  return DataRow(
                    cells: [
                      DataCell(Text(item.getPositionID)),
                      DataCell(
                        Text("${item.getFirstName} ${item.getLastname}"),
                      ),
                      DataCell(Text(item.getPartyListID)),
                      DataCell(Text(item.getGradeLevelID)),
                    ],
                    onLongPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ResultPage()));
                    },
                  );
                }).toList(),
              );
            } catch (e) {
              print(e.toString());
              return const Center(
                child: Text('No data'),
              );
            }
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
