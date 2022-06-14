import 'dart:convert';
import 'package:election_management_system_ems/Screens/SCE/Widgets/create_election.dart';
import 'package:http/http.dart' as http;

class ElectionOperation {
  Future<bool> CreateElection(
      final String electionName,
      final String startDate,
      final String endDate,
      final String timezone,) async {
    //print mo dgd bry

    var registerCandidate = json.encode({
      'ElectionName': electionName,
      'StartDate': startDate,
      'EndDate': endDate,
      'Timezone': timezone,
      'Status': 0,
    });

    print("JSON $registerCandidate");

    try {
      final response = await http.post(
        Uri.parse("http://localhost:8090/api/addElection"),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
        body: registerCandidate,
      );

      if (response.statusCode == 202) {
        return true;
      } else if (response.statusCode == 404) {
        return false;
      }

      return true;
    } catch (e) {
      e.toString();
      return false;
    }
  }
}
