import 'package:election_management_system_ems/Backend/LoginOperation.dart';
import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/hompage.dart';
import 'package:election_management_system_ems/Screens/Voters/instruction.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  String userType = 'SCE Admin';
  String department = 'JHS';
  List<String> userTypeList = ['SCE Admin', 'Voter', 'Campaign Manager'];
  List<String> departmenList = ['JHS', 'SHS'];

  var username = TextEditingController();
  var password = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5), BlendMode.dstATop),
          image: AssetImage("assets/loloBrown.jpg"),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 50.0, bottom: 10.0),
              child: SizedBox(
                width: 300,
                height: 160,
                child: Image.asset('assets/emsLogo.png'),
              )),
          Container(
            height: 407,
            width: 600,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                const Text(
                  'Please provide the following details to continue',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),

                //dropdown box for user type
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
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
                        value: userType,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (role) {
                          setState(() {
                            userType = role!;
                          });
                        },
                        items: userTypeList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                //radio button for depertment
                Padding(
                  padding:
                      EdgeInsets.only(left: 100.0, bottom: 10.0, right: 100.0),
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
                        value: department,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        onChanged: (role) {
                          setState(() {
                            department = role!;
                          });
                        },
                        items: departmenList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                //input field for username
                Padding(
                    padding: const EdgeInsets.only(
                        bottom: 10.0, left: 100.0, right: 100.0),
                    child: Container(
                        width: 250.0,
                        height: 45.0,
                        child: TextField(
                          controller: username,
                          decoration: InputDecoration(
                            prefixText: '   ',
                            suffixIcon: const Icon(Icons.person),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            filled: true,
                            fillColor: Colors.grey[350],
                            hintText: 'Username',
                          ),
                        ))),

                //input field for password
                Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 20.0, left: 100.0, right: 100.0),
                    child: Container(
                        width: 250.0,
                        height: 45.0,
                        child: TextField(
                          controller: password,
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixText: '   ',
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility_off_outlined)),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              filled: true,
                              fillColor: Colors.grey[350],
                              hintText: 'Password'),
                        ))),

                //login button
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
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
                        var a = LoginOperation();

                        a
                            .userLogin(username.text, password.text, userType,
                                department)
                            .then((value) {
                          if (value) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => HomePage()));
                          }
                        });
                      },
                      child: const Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
                //forgot password button
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: TextButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => InstructionPage()));
                      },
                      icon: Icon(
                        Icons.info_outlined,
                        size: 15.0,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class _User extends StatefulWidget {
  const _User({Key? key}) : super(key: key);

  @override
  State<_User> createState() => __UserState();
}

class __UserState extends State<_User> {
  String? selectedValue = 'SCE Admin';
  final _dropdownFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _dropdownFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.only(right: 100.0, left: 100.0),
                child: Container(
                  width: 250.0,
                  height: 49.0,
                  child: DropdownButtonFormField(
                      style: TextStyle(fontSize: 15.0),
                      decoration: InputDecoration(
                        //prefixIcon: Icon(Icons.supervised_user_circle),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.grey[350],
                      ),
                      //validator: (value) => value == null ? "Select a country" : null,
                      dropdownColor: Colors.grey[300],
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem(
                          child: Text(
                            '   SCE Admin',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          value: 'SCE Admin',
                        ),
                        DropdownMenuItem(
                          child: Text(
                            '   Voter',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          value: 'Voter',
                        ),
                        DropdownMenuItem(
                          child: Text(
                            '   Campaign Manager',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          value: 'Campaign Manager',
                        )
                      ]),
                ))
          ],
        ));
  }
}

class _Department extends StatefulWidget {
  const _Department({Key? key}) : super(key: key);

  @override
  State<_Department> createState() => __DepartmentState();
}

class __DepartmentState extends State<_Department> {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'JHS';

  // Group Value for Radio Button.
  int id = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.white),
              value: 1,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'JHS';
                  id = 1;
                });
              },
              activeColor: Colors.white,
            ),
            Text(
              'JHS',
              style: new TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 70.0,
            ),
            Radio(
              fillColor:
                  MaterialStateColor.resolveWith((states) => Colors.white),
              value: 2,
              groupValue: id,
              onChanged: (val) {
                setState(() {
                  radioButtonItem = 'SHS';
                  id = 2;
                });
              },
              activeColor: Colors.white,
            ),
            Text(
              'SHS',
              style: new TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
