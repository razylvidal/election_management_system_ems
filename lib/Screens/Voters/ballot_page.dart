

import 'dart:ui';

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/Voters/topBar.dart';
import 'package:flutter/material.dart';

class BallotPage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   BallotPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: TopNavigation(context, scaffoldKey),
       body: Container(
         child: Column(
           children: [
             SizedBox(height: 50.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 SizedBox(height: 10,),
                  Container(
                    width: 800,
                    height: 450,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),  
                      borderRadius: BorderRadius.circular(25), 
                    ),
                      child: SingleChildScrollView(
                      child: Position()
                      )

                  )
               ],
             
             )
            
             
           ],
         ),

       )
    );
  }
}

class Position extends StatefulWidget {
  Position({Key? key}) : super(key: key);
  @override
  _PositionState createState() => _PositionState();
}

class _PositionState extends State<Position> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
        steps:getSteps(),
        currentStep: currentStep,
        onStepTapped: (int step)
        {
          setState(() {
            currentStep = step;
          });
        },
        onStepCancel: ()
        {
          currentStep > 0 ?
          setState(() => currentStep -= 1) : null;
        },
        onStepContinue: ()
        {
          currentStep < 10 ?
          setState(() => currentStep += 1): null;
        },
      
    );
  }
  
  List<Step> getSteps()
  {
    return[
      Step(
        title: new Text('President'),
        content: Column(
          children: <Widget>[
            TextInstruction(),
            SizedBox(height:20),
            SampleCandidate()
            
           
          ],
        ),
        isActive: currentStep >= 0,
        state: currentStep == 0 ?
        StepState.editing : StepState.complete,
      ),
      Step(
        title: new Text('Vice-President'),
        content: Column(
          children: <Widget>[
            TextInstruction(),
              SizedBox(height:20),
            SampleCandidate()
            
          ],
        ),
        isActive: currentStep >= 1,
        state: currentStep == 1 ?
        StepState.editing : currentStep < 1 ? StepState.disabled: StepState.complete,
      ),
      Step(
        title: new Text("Secretary"),
        content: Column(
          children: <Widget>[
            TextInstruction(),
            SizedBox(height:20),
            SampleCandidate()
           
          ],
        ),
        isActive:currentStep >= 2,
        state: currentStep == 2 ?
        StepState.editing : currentStep < 2 ? StepState.disabled: StepState.complete,
      ),
       Step(
        title: new Text("Treasurer"),
        content: Column(
          children: <Widget>[
            TextInstruction(),
            SizedBox(height:20),
            SampleCandidate()
           
          ],
        ),
        isActive:currentStep >= 3,
        state: currentStep == 3 ?
        StepState.editing : currentStep < 3 ? StepState.disabled: StepState.complete,
      ),
       Step(
        title: new Text("Auditor"),
        content: Column(
          children: <Widget>[
            TextInstruction(),
              SizedBox(height:20),
            SampleCandidate()
           
          ],
        ),
        isActive:currentStep >= 4,
        state: currentStep == 4 ?
        StepState.editing : currentStep < 4 ? StepState.disabled: StepState.complete,
      ),
       Step(
        title: new Text("Public Relation Officer"),
        content: Column(
          children: <Widget>[
            TextInstruction(),
              SizedBox(height:20),
            SampleCandidate()
           
          ],
        ),
        isActive:currentStep >= 5,
        state: currentStep == 5 ?
        StepState.editing : currentStep < 5 ? StepState.disabled: StepState.complete,
      ),
       Step(
        title: new Text("Peace Officer"),
        content: Column(
          children: <Widget>[
            TextInstruction(),
              SizedBox(height:20),
            SampleCandidate()
           
          ],
        ),
        isActive:currentStep >= 6,
        state: currentStep == 6 ?
        StepState.editing : currentStep < 6 ? StepState.disabled: StepState.complete,
      ),
       Step(
        title: new Text("Grade 8 Governor"),
        content: Column(
          children: <Widget>[
            TextInstruction(),
              SizedBox(height:20),
            SampleCandidate()
           
          ],
        ),
        isActive:currentStep >= 7,
        state: currentStep == 7 ?
        StepState.editing : currentStep < 7 ? StepState.disabled: StepState.complete,
      ),
    ];
  }
}

class TextInstruction extends StatefulWidget {
  const TextInstruction({ Key? key }) : super(key: key);

  @override
  State<TextInstruction> createState() => _TextInstructionState();
}

class _TextInstructionState extends State<TextInstruction> {
  @override
  Widget build(BuildContext context) {
    return Text('You may vote for no more than 1 candidate for this position',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w700
              ),
            
      
    );
  }
}

class SampleCandidate extends StatefulWidget {
  const SampleCandidate({ Key? key }) : super(key: key);

  @override
  State<SampleCandidate> createState() => _SampleCandidateState();
}

class _SampleCandidateState extends State<SampleCandidate> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 365,

    child: Row(
              children: [
                //Padding(padding: EdgeInsets.only(left: 20.0)),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/profile.png', fit: BoxFit.cover,),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    DefaultTextStyle(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0), child: Text ('FLORIANE MAE RECTO')),
                    DefaultTextStyle(style: TextStyle(fontSize: 10), child: Text ('Grade 12-STEM')),
                    DefaultTextStyle(style: TextStyle(fontSize: 10), child: Text ('PADAYON')),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      color: Colors.red,
                      height: 30.0,
                      // ignore_for_file: deprecated_member_use
                      child: FlatButton(
                      onPressed: (){}, 
                      child: Text(
                        'Vote',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    )
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 60.0)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/profile.png', fit: BoxFit.cover,),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    DefaultTextStyle(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0), child: Text ('BRIAN MACATANGAY')),
                    DefaultTextStyle(style: TextStyle(fontSize: 10), child: Text ('Grade 12-ABM')),
                    DefaultTextStyle(style: TextStyle(fontSize: 10), child: Text ('TINGOG')),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      color: Colors.red,
                      height: 30.0,
                      // ignore_for_file: deprecated_member_use
                      child: FlatButton(
                      onPressed: (){}, 
                      child: Text(
                        'Vote',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      )
                    )
                    )
                  ],
                )
              ],
            ),
    );
  }
}