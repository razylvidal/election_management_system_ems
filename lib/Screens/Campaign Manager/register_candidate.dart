import 'dart:typed_data';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/drop_file_widget.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/drop_zone_widget.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/filePicker.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/file_data_model.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/get_link.dart';
import 'package:email_validator/email_validator.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/topNavBar.dart';
import 'package:flutter/material.dart';

class RegisterCandidatePage extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  RegisterCandidatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopNavBar(context, scaffoldKey),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(left: 250, right: 250),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50.0,
                      ),
                      Center(
                          child: DefaultTextStyle(
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              child: Text('Candidate Registration'))),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          width: 220,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: Row(children: [
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Icon(
                              Icons.info_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text(
                              'Candidate Information',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                      Divider(
                        color: Colors.black,
                        height: 0,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'First Name:',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                      //width: 200,
                                      height: 40,
                                      child: TextField(
                                          decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ))),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Middle Name:',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  Container(
                                      //width: 200,
                                      height: 40,
                                      child: TextField(
                                          decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ))),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Last Name:',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  Container(
                                      //width: 200,
                                      height: 40,
                                      child: TextField(
                                          decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ))),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Grade Level:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                )),
                            GradeLevel(),
                            SizedBox(
                              height: 15,
                            )
                          ],
                        )),
                        SizedBox(width: 20),
                        Expanded(child: Email()),
                      ]),
                      SizedBox(height: 10),
                      Row(children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Position:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                )),
                            Position()
                          ],
                        )),
                        SizedBox(width: 20),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Partylist:',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                )),
                            Partylist()
                          ],
                        )),
                      ]),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                          width: 170,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: Row(children: [
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Icon(
                              Icons.person_pin,
                              color: Colors.white,
                              size: 20,
                            ),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text(
                              'Display Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                      Divider(
                        color: Colors.black,
                        height: 0,
                      ),
                      SizedBox(height: 30),
                      ImagePicker(),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          width: 150,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: Row(children: [
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Icon(
                              Icons.list_alt_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            Padding(padding: EdgeInsets.only(left: 5)),
                            Text(
                              'Documents',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                      Divider(
                        color: Colors.black,
                        height: 0,
                      ),
                      GetLink(),
                      SizedBox(height: 50)
                    ]))));
  }
}

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  String _errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Email Address:',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )),
      Container(
          height: 50,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (val) {
              validateEmail(val);
            },
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )),
      Text(
        _errorMessage,
        style: TextStyle(color: Colors.red, fontSize: 15),
      )
    ]);
  }

  //for email validation
  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}

//dropdown grade level
class GradeLevel extends StatefulWidget {
  const GradeLevel({Key? key}) : super(key: key);

  @override
  State<GradeLevel> createState() => _GradeLevelState();
}

class _GradeLevelState extends State<GradeLevel> {
  String? selectedValue = '11-STEM';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _dropdownFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 50,
              child: DropdownButtonFormField(
                  style: TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    //prefixIcon: Icon(Icons.supervised_user_circle),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  dropdownColor: Colors.grey[300],
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      child: Text('Grade 11 - STEM'),
                      value: '11-STEM',
                    ),
                    DropdownMenuItem(
                      child: Text('Grade 11 - GAS'),
                      value: '11-GAS',
                    ),
                    DropdownMenuItem(
                      child: Text('Grade 11 - ABM'),
                      value: '11-ABM',
                    ),
                    DropdownMenuItem(
                      child: Text('Grade 11 - TVL'),
                      value: '11-TVL',
                    ),
                    DropdownMenuItem(
                      child: Text('Grade 12 - STEM'),
                      value: '12-STEM',
                    ),
                    DropdownMenuItem(
                      child: Text('Grade 12 - GAS'),
                      value: '12-GAS',
                    ),
                    DropdownMenuItem(
                      child: Text('Grade 12 - ABM'),
                      value: '12-ABM',
                    ),
                    DropdownMenuItem(
                      child: Text('Grade 12 - TVL'),
                      value: '12-TVL',
                    )
                  ]),
            )
          ],
        ));
  }
}

//dropdown for position
class Position extends StatefulWidget {
  const Position({Key? key}) : super(key: key);

  @override
  State<Position> createState() => _PositionState();
}

class _PositionState extends State<Position> {
  String? selectedValue = 'president';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _dropdownFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 50,
              child: DropdownButtonFormField(
                  style: TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  dropdownColor: Colors.grey[300],
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: const [
                    DropdownMenuItem(
                      child: Text('President'),
                      value: 'president',
                    ),
                    DropdownMenuItem(
                      child: Text('Vice-President'),
                      value: 'vicePresident',
                    ),
                    DropdownMenuItem(
                      child: Text('Secretary'),
                      value: 'secretary',
                    ),
                    DropdownMenuItem(
                      child: Text('Treasurer'),
                      value: 'treasurer',
                    ),
                    DropdownMenuItem(
                      child: Text('Auditor'),
                      value: 'auditor',
                    ),
                    DropdownMenuItem(
                      child: Text('Public Information and Relations Officer'),
                      value: 'piro',
                    ),
                    DropdownMenuItem(
                      child: Text('ABM Representative'),
                      value: 'ABMrep',
                    ),
                    DropdownMenuItem(
                      child: Text('TVL Representative'),
                      value: 'TVLrep',
                    ),
                    DropdownMenuItem(
                      child: Text('STEM Representative'),
                      value: 'STEMrep',
                    ),
                    DropdownMenuItem(
                      child: Text('GAS Representative'),
                      value: 'GASrep',
                    )
                  ]),
            )
          ],
        ));
  }
}

class Partylist extends StatefulWidget {
  const Partylist({Key? key}) : super(key: key);

  @override
  State<Partylist> createState() => _PartylistState();
}

class _PartylistState extends State<Partylist> {
  String? selectedValue = 'tingog';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _dropdownFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 500,
              height: 50,
              child: DropdownButtonFormField(
                  style: TextStyle(fontSize: 15.0),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  dropdownColor: Colors.grey[300],
                  value: selectedValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  hint: Container(
                    width: 150, //and here
                    child: Text(
                      "Select Item Type",
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      child: Text('TINGOG'),
                      value: 'tingog',
                    ),
                    DropdownMenuItem(
                      child: Text('PADAYON'),
                      value: 'padayon',
                    ),
                  ]),
            )
          ],
        ));
  }
}

//uploading candidate display profile
class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  String fileName = '';
  //List<int> picture = [];
  var pick = Picker();
  late Future<Uint8List> candiPicture;
  String? name;

  @override
  void initState() {
    candiPicture = Future.value(Uint8List(0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // ignore: deprecated_member_use
            FlatButton.icon(
                onPressed: () {
                  pick.pickFile().then((value) {
                    setState(() {
                      fileName = value;
                      candiPicture = pick.getImageBytes();
                    });
                  });
                },
                icon: Icon(
                  Icons.upload_file,
                  color: Colors.black,
                  size: 40,
                ),
                label: Text(
                  'Upload Picture  ' + fileName,
                )),
            Padding(padding: EdgeInsets.only(top: 20)),

            SizedBox(
              child: FutureBuilder<Uint8List>(
                future: candiPicture,
                builder: ((context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Text('No image selected');
                    } else {
                      return Image.memory(
                        Uint8List.fromList(snapshot.data!.cast<int>()),
                        fit: BoxFit.fill,
                        height: 200,
                        width: 200,
                      );
                    }
                  }
                  return const Text('No image selected');
                }),
              ),
            ),
          ],
        ));
  }
}

class DragAndDrop extends StatefulWidget {
  const DragAndDrop({Key? key}) : super(key: key);

  @override
  State<DragAndDrop> createState() => _DragAndDropState();
}

class _DragAndDropState extends State<DragAndDrop> {
  File_Data_Model? file;
  @override
  Widget build(BuildContext context) {
    return Container(
        //alignment: Alignment.center,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            DroppedFileWidget(file: file),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              child: DropZoneWidget(
                onDroppedFile: (file) => setState(() => this.file = file),
              ),
            ),
          ],
        ));
  }
}
