// import 'dart:ui';
import 'package:election_management_system_ems/Backend/CandidateOperation.dart';
import 'package:election_management_system_ems/Models/CandidateModel.dart';
import 'package:election_management_system_ems/Screens/Voters/topBar.dart';
import 'package:flutter/material.dart';

class BallotPage extends StatefulWidget {
  const BallotPage({Key? key}) : super(key: key);

  @override
  State<BallotPage> createState() => _BallotPageState();
}

class _BallotPageState extends State<BallotPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopNavigation(context, scaffoldKey),
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 800,
                    height: 500,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: SingleChildScrollView(
                      child: Position(),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class Position extends StatefulWidget {
  Position({Key? key}) : super(key: key);
  @override
  _PositionState createState() => _PositionState();

  final String status = '1';
  final List<String> title = [
    'President',
    'Vice President',
    'Secretary',
    'Treasurer',
    'Auditor',
    'P.I.O',
  ];
}

class _PositionState extends State<Position> {
  int currentStep = 0;
  var x = CandidateOperation();

  @override
  void initState() {
    super.initState();
  }

  List<int> votedCandidates = [];

  List<CandidateModel> firstParty(List<CandidateModel> x) {
    return x.where((element) => element.getPartyListID == 'TINGOG').toList();
  }

  List<CandidateModel> secondParty(List<CandidateModel> x) {
    return x.where((element) => element.getPartyListID == 'PADAYON').toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<List<CandidateModel>>(
          future: x.getCandidates(widget.status),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const CircularProgressIndicator();
            }

            if (snapshot.hasData) {
              return Stepper(
                steps: getSteps(
                  firstParty(snapshot.data!.toList()),
                  secondParty(snapshot.data!.toList()),
                ),
                currentStep: currentStep,
                onStepTapped: (int step) {
                  setState(() {
                    currentStep = step;
                  });
                },
                onStepCancel: () {
                  currentStep > 0 ? setState(() => currentStep -= 1) : null;
                },
                onStepContinue: () {
                  currentStep < 8 ? setState(() => currentStep += 1) : null;
                },
              );
            }

            return const CircularProgressIndicator();
          },
        ),
        TextButton(
          child: const Text("SUBMIT"),
          onPressed: () {
            x.submitThisVoteResult(votedCandidates).then(
                  (value) => print("Vote added"),
                );
          },
        ),
      ],
    );
  }

  List<Step> getSteps(
      List<CandidateModel> candid1, List<CandidateModel> candid2) {
    return List.generate(
      candid1.length,
      (index) {
        return Step(
          title: Text(widget.title[index]),
          content: Column(
            children: <Widget>[
              const TextInstruction(),
              const SizedBox(height: 20),
              //the candidates
              SizedBox(
                width: 365,
                child: Row(
                  children: [
                    //1st candidate
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            'assets/profile.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                          child: Text(candid1[index].toString(), maxLines: 2),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(fontSize: 10),
                          child: Text(candid1[index].getPartyListID),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(fontSize: 10),
                          child: Text(candid1[index].getGradeLevelID),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          color: Colors.red,
                          height: 30.0,
                          child: TextButton(
                            child: const Text(
                              'Vote',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              //add pair to map
                              //position eg. president
                              //candidate id = numeric integer
                              votedCandidates
                                  .add(candid1[index].getCandidateID);
                            },
                          ),
                        )
                      ],
                    ),

                    const Padding(padding: EdgeInsets.only(left: 60.0)),
                    //2nd candidate
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            'assets/profile.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 10)),
                        DefaultTextStyle(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                          child: Text(candid2[index].toString(), maxLines: 2),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(fontSize: 10),
                          child: Text(candid2[index].getPartyListID),
                        ),
                        DefaultTextStyle(
                          style: const TextStyle(fontSize: 10),
                          child: Text(candid2[index].getGradeLevelID),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        Container(
                          color: Colors.red,
                          height: 30.0,
                          child: TextButton(
                            child: const Text(
                              'Vote',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              //add pair to map
                              //position eg. president
                              //candidate id = numeric integer
                              votedCandidates
                                  .add(candid2[index].getCandidateID);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          isActive: currentStep >= index,
          state: currentStep == index ? StepState.editing : StepState.complete,
        );
      },
    );
  }

  checkifLast(int count) {
    if (count == widget.title.length) {
      return false;
    } else {
      return true;
    }
  }
}

class TextInstruction extends StatefulWidget {
  const TextInstruction({Key? key}) : super(key: key);

  @override
  State<TextInstruction> createState() => _TextInstructionState();
}

class _TextInstructionState extends State<TextInstruction> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'You may vote for no more than 1 candidate for this position',
      style: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
