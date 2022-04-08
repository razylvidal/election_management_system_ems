

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:flutter/material.dart';



class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "SSG Election 2022", "status": "Ongoing", "start": "01/02/2022, 3:00PM", "end": "01/07/2022, 3:00PM"},
    {"id": 2, "name": "SSG Election 2021", "status": "Building", "start": "01/02/2022, 3:00PM", "end": "01/07/2022, 3:00PM"},
    {"id": 3, "name": "SSG Election 2020", "status": "Completed", "start": "01/02/2022, 3:00PM", "end": "01/07/2022, 3:00PM"},
   
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.only(top:10.0, left: 100.0, right: 100.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            
            ),
            /*Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 20.0),
                // ignore_for_file: deprecated_member_use
                child: FlatButton(
                  color: mustard,
                  onPressed: () {

                  },
                  child: Text(
                    'Create Election',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0

                    ),
                  ),
                ),
              
             
              ),

              ),*/
           
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: Colors.amberAccent,
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: Text(
                            _foundUsers[index]["id"].toString(),
                            style: const TextStyle(fontSize: 24),
                          ),
                          title: Text(_foundUsers[index]['name']),
                          subtitle: Text(
                              '${_foundUsers[index]["status"].toString()}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        )
    );
  }
}