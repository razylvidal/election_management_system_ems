import 'package:election_management_system_ems/Backend/CandidateOperation.dart';
import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Models/CandidateModel.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/result.dart';
import 'package:flutter/material.dart';

class AddCandidatePage extends StatelessWidget {
  const AddCandidatePage({Key? key}) : super(key: key);

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
              const Padding(
                padding: EdgeInsets.only(left: 50.0),
              ),
              Text(
                'SSG Election 2022',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: blue,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 30.0)),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 50.0)),
              SizedBox(
                width: 500.0,
                height: 50.0,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Search'),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          CandidateList(),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            const Padding(padding: EdgeInsets.only(left: 50)),
            Container(
              width: 100,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.chevron_left_rounded,
                  color: Colors.white,
                ),
                label: const Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ]),
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
      return const SizedBox(width: 200);
    } else {
      return const SizedBox(width: 70);
    }
  }
}

class CandidateList extends StatefulWidget {
  const CandidateList({Key? key}) : super(key: key);

  @override
  _CandidateListState createState() => _CandidateListState();

  final String status = '0';
}

class _CandidateListState extends State<CandidateList> {
  var candidate = CandidateOperation(); // Generate a list of fiction prodcts

  late Future<List<CandidateModel>> candid;
  @override
  initState() {
    // at the beginning, all users are shown
    candid = candidate.getCandidates(widget.status);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 310,
      child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: FutureBuilder<List<CandidateModel>>(
          future: candid,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }
            if (snapshot.hasData) {
              return SingleChildScrollView(
                child: DataTable(
                  headingRowColor: MaterialStateProperty.all(Colors.red[200]),
                  columns: [
                    DataColumn(label: Text('Position')),
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('Partylist')),
                    DataColumn(label: Text('Grade Level')),
                    DataColumn(label: Text('Drive')),
                    DataColumn(label: Text('Status')),
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
                        DataCell(Text(item.getLink)),
                        DataCell(Container(
                          width: 80.0,
                          height: 25.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          //approve candidacy
                          child: TextButton(
                            child: const Text(
                              'VERIFY',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              //TODO:: verify candidate here when candidates are already been displayed from the database
                              candidate
                                  .verifyCandidacy(item.getCandidateID)
                                  .then(
                                    ((value) => value
                                        ? print('VERIFIED')
                                        : print('NOT VERIFIED')),
                                  );
                            },
                          ),
                        )),
                      ],
                      onLongPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ResultPage()));
                      },
                    );
                  }).toList(),
                ),
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
