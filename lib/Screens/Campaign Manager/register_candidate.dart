import 'dart:typed_data';
import 'package:election_management_system_ems/Backend/CandidateOperation.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/drop_file_widget.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/drop_zone_widget.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/filePicker.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/file_data_model.dart';
import 'package:election_management_system_ems/Screens/Campaign%20Manager/get_link.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/topNavBar.dart';
import 'package:election_management_system_ems/Screens/SCE/login.dart';
import 'package:flutter/material.dart';

class RegisterCandidatePage extends StatefulWidget {
  const RegisterCandidatePage({Key? key}) : super(key: key);

  @override
  State<RegisterCandidatePage> createState() => _RegisterCandidatePageState();
}

class _RegisterCandidatePageState extends State<RegisterCandidatePage> {
  String gradelevel = 'Grade 11 - STEM';
  String position = 'President';
  String partylist = 'TINGOG';
  List<String> gradelevellist = [
    'Grade 11 - STEM',
    'Grade 11 - GAS',
    'Grade 11 - ABM',
    'Grade 11 - TVL',
    'Grade 12 - STEM',
    'Grade 12 - GAS',
    'Grade 12 - ABM',
    'Grade 12 - TVL',
  ];
  List<String> positionlist = [
    'President',
    'Vice President',
    'Secretary',
    'Treasurer',
    'Auditor',
    'P.I.O',
    'ABM Representative',
    'TVL Representative',
    'STEM Representative',
    'GAS Representative',
  ];
  List<String> partlistlist = ['TINGOG', 'PADAYON'];
  var firstname = TextEditingController();
  var middlename = TextEditingController();
  var lastname = TextEditingController();
  var election = TextEditingController();
  var gradelevelcontroller = TextEditingController();
  var positioncontroller = TextEditingController();
  var partylistcontroller = TextEditingController();
  var link = TextEditingController();
  var status = '0';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopNavBar(context),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 250, right: 250),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50.0,
                      ),
                      const Center(
                          child: DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              child: Text('Candidate Registration'))),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                          width: 220,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: Row(children: [
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Icon(
                              Icons.info_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Text(
                              'Candidate Information',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                      const Divider(
                        color: Colors.black,
                        height: 0,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'First Name:',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Container(
                                      //width: 200,
                                      height: 40,
                                      child: TextField(
                                          controller: firstname,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ))),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Middle Name:',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  Container(
                                      //width: 200,
                                      height: 40,
                                      child: TextField(
                                          controller: middlename,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ))),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Last Name:',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  Container(
                                      //width: 200,
                                      height: 40,
                                      child: TextField(
                                          controller: lastname,
                                          decoration: InputDecoration(
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.grey, width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
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

                      //gradelevel dropdown
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.blueGrey.shade50,
                              style: BorderStyle.solid,
                              width: 0.80,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: gradelevel,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              onChanged: (role) {
                                setState(() {
                                  gradelevel = role!;
                                });
                              },
                              items: gradelevellist
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),

                      //position dropdown
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.blueGrey.shade50,
                              style: BorderStyle.solid,
                              width: 0.80,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: position,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              onChanged: (role) {
                                setState(() {
                                  position = role!;
                                });
                              },
                              items: positionlist.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),

                      //partylist dropdown
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.blueGrey.shade50,
                              style: BorderStyle.solid,
                              width: 0.80,
                            ),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: partylist,
                              icon: const Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              onChanged: (role) {
                                setState(() {
                                  partylist = role!;
                                });
                              },
                              items: partlistlist.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text(
                                      value,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),

                      Container(
                          width: 170,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: Colors.red),
                          child: Row(children: [
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Icon(
                              Icons.person_pin,
                              color: Colors.white,
                              size: 20,
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Text(
                              'Display Profile',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                      const Divider(
                        color: Colors.black,
                        height: 0,
                      ),
                      const SizedBox(height: 30),
                      const ImagePicker(),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                          width: 150,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red),
                          child: Row(children: [
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Icon(
                              Icons.list_alt_rounded,
                              color: Colors.white,
                              size: 20,
                            ),
                            const Padding(padding: EdgeInsets.only(left: 5)),
                            const Text(
                              'Documents',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),

                      const Divider(
                        color: Colors.black,
                        height: 0,
                      ),
                      const SizedBox(height: 20),
                      Container(
                          width: 700,
                          height: 40,
                          child: TextField(
                              controller: link,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ))),
                      const SizedBox(height: 20),
                      //add candidate
                      Padding(
                        padding: const EdgeInsets.only(bottom: 0.0),
                        child: Container(
                          height: 30,
                          width: 100,
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

                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {
                              var a = CandidateOperation();
                              a.RegisterCandidate(
                                      firstname.text,
                                      middlename.text,
                                      lastname.text,
                                      election.text,
                                      gradelevel,
                                      position,
                                      partylist,
                                      link.text,
                                      status)
                                  .then((value) {
                                if (value) {
                                  print("added");
                                }
                              });
                            },
                            child: const Text(
                              'SUBMIT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      )
                    ]))));

    //submit button
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
    return Center(
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
            icon: const Icon(
              Icons.upload_file,
              color: Colors.black,
              size: 40,
            ),
            label: Text(
              'Upload Picture  ' + fileName,
            )),
        const Padding(padding: const EdgeInsets.only(top: 20)),

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
                    fit: BoxFit.cover,
                    width: 400,
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
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            DroppedFileWidget(file: file),
            const SizedBox(
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
