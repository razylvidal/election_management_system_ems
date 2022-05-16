

import 'package:election_management_system_ems/Constant/style.dart';
import 'package:election_management_system_ems/Screens/SCE/Helpers/responsiveness.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/create_election.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/topNavBar.dart';
import 'package:election_management_system_ems/Screens/SCE/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
   HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: TopNavBar(context, scaffoldKey),
    body: DashboardPage(),
    
    );
  }
}

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
    {"id": 2, "name": "SSG Election 2021", "status": "Completed", "start": "01/02/2022, 3:00PM", "end": "01/07/2022, 3:00PM"},
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
    return  Container(
      width: MediaQuery.of(context).size.width,
     child: Padding(
        padding: const EdgeInsets.only(top:10.0, left: 150.0, right: 150.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 10.0),),
                Expanded(
                  child: TextField(
                    onChanged: (value) => _runFilter(value),
                    decoration: const InputDecoration(
                        labelText: 'Search', 
                        suffixIcon: Icon(Icons.search,)),
                        
                  
                  ),
                  
                ),
              Spacing(),
               Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: mustard,
                              borderRadius: BorderRadius.circular(20),
                                boxShadow: const [  
                                  BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                ), 
                              ]
                            ),    
              // ignore_for_file: deprecated_member_use
                child: FlatButton.icon(
                  icon: Icon(
                    Icons.create,
                    color: Colors.white,

                    ),
                  label: DefaultTextStyle(
                    child: Text('Create Election'),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                   onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => CreateElectionPage()));

                  },
                ),
               )
                
              ]
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: Colors.blueGrey,
                        elevation: 5,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          onTap: (){
                            
                          },
                          leading: Text(
                            _foundUsers[index]["id"].toString(),
                            style: const TextStyle(fontSize: 24),
                          ),
                          title: Text(
                            _foundUsers[index]['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.w900
                            ),
                            ),
                          subtitle: Text(
                              '${_foundUsers[index]["status"].toString()}'),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(
                        fontSize: 24),
                    ),
            ),
          ],
        )
      )
    );
  }
}
class Spacing extends StatefulWidget {
  const Spacing({ Key? key }) : super(key: key);

  @override
  State<Spacing> createState() => _SpacingState();
}

class _SpacingState extends State<Spacing> {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isLargeScreen(context)) {
      return SizedBox(width: 400);
    } else {
      return SizedBox(width: 70);
    }
  }
}