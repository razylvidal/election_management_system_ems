import 'package:election_management_system_ems/Backend/AccountOperation.dart';
import 'package:election_management_system_ems/Models/AccountModel.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/add_user.dart';
import 'package:flutter/material.dart';

//create stateful widget
class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPage createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(height: 30.0),
      const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'SSG Election 2022',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          )),
      const SizedBox(height: 20.0),
      Row(
        children: [
          const Padding(padding: EdgeInsets.only(left: 50)),
          const Expanded(
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
                  'Add User',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AddUser()));
                },
              )),
          Padding(padding: EdgeInsets.only(left: 100)),
        ],
      ),
      const SizedBox(height: 20.0),
      const SizedBox(
        height: 350.0,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 50.0, right: 100.0),
            child: AccountList(),
          ),
        ),
      )
    ]);
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

class AccountList extends StatefulWidget {
  const AccountList({Key? key}) : super(key: key);

  @override
  _AccountListState createState() => _AccountListState();
}

class _AccountListState extends State<AccountList> {
  var x = AccountOperation();
  late Future<List<AccountModel>> accounts;

  @override
  initState() {
    accounts = x.getAccounts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: FutureBuilder<List<AccountModel>>(
          future: accounts,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }

            if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return const Center(
                  child: Text('No Data'),
                );
              }
              return DataTable(
                headingRowColor: MaterialStateProperty.all(Colors.red[200]),
                columns: [
                  DataColumn(label: const Text('AccountID')),
                  DataColumn(label: const Text('Userame')),
                  DataColumn(label: const Text('Password')),
                  DataColumn(label: const Text('User Type')),
                  DataColumn(label: const Text('Email Address')),
                ],
                rows: snapshot.data!.map((item) {
                  return DataRow(cells: [
                    DataCell(Text(item.getAccoundId.toString())),
                    DataCell(Text(item.getUsername)),
                    DataCell(Text(item.getPassword)),
                    DataCell(Text(item.getUserType)),
                    DataCell(Text(item.getEmail)),
                  ], onLongPress: () {});
                }).toList(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}