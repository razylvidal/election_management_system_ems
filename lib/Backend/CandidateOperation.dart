import 'dart:convert';
import 'package:election_management_system_ems/Backend/Mapping.dart';
import 'package:election_management_system_ems/Models/CandidateModel.dart';
import 'package:election_management_system_ems/Models/ResultModel.dart';
import 'package:http/http.dart' as http;

class CandidateOperation {
  Future<bool> RegisterCandidate(
      final String firstname,
      final String middlename,
      final String lastname,
      final String electionID,
      final String gradelevel,
      final String position,
      final String partylist,
      final String link,
      final String status) async {
    var registerCandidate = json.encode({
      'Firstname': firstname,
      'Middlename': middlename,
      'Lastname': lastname,
      'ElectionID': electionID,
      'GradeLevelID': gradelevel,
      'PositionID': position,
      'PartyListID': partylist,
      'Link': link,
      'Status': "0",
      'VoteCount': 0
    });

    print("JSON $registerCandidate");

    try {
      final response = await http.post(
        Uri.parse("http://localhost:8090/api/addCandidate"),
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

  Future<List<CandidateModel>> getCandidates(final String status) async {
    try {
      final response = await http.get(
        Uri.parse("http://localhost:8090/api/candidates/$status"),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
      );

      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      Mapping.candidates = parsed
          .map<CandidateModel>((json) => CandidateModel.toJson(json))
          .toList();

      return Mapping.candidates;
    } catch (e) {
      e.toString();
      return [];
    }
  }

//verify candidacy
  Future<bool> verifyCandidacy(final int candidateID) async {
    const status = '1';
    try {
      final response = await http.get(
        Uri.parse(
            "http://localhost:8090/api/verifycandidate/$candidateID/$status"),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
      );

      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      e.toString();
      return false;
    }

    return false;
  }

  Future<List<ResultModel>> getVoteResult() async {
    var response;
    //late Future<List<ResultModel>> result2;
    List<ResultModel> result = [];
    final List<String> title = [
      'President',
      'Vice President',
      'Secretary',
      'Treasurer',
      'Auditor',
      'P.I.O',
      'TVL Representative',
    ];
    try {
      for (int i = 0; i < title.length; i++) {
        print('object ${title[i]}');
        response = await http.get(
          Uri.parse("http://localhost:8090/api/result/${title[i]}"),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
        );
        Map<String, dynamic> candi =
            jsonDecode(response.body) as Map<String, dynamic>;

        //result.add(ResultModel.fromJson(candi));

        print(candi);

        var admin = ResultModel.fromJson(candi);

        result.add(
          ResultModel.raw(
            admin.getFirstName,
            admin.getLastName,
            admin.getPosition,
            admin.getTotalVotes,
          ),
        );
      }

      print("result $result");

      if (response.statusCode == 200) {
        return result;
      }
    } catch (e) {
      e.toString();
      return [];
    }

    return [];
  }

  Future<ResultModel> getParsed(http.Response x) async {
    print(x.body);
    try {
      final parsed = await jsonDecode(x.body).cast<Map<String, dynamic>>();
      return await parsed
          .map<ResultModel>((json) => ResultModel.fromJson(json));
    } catch (e) {
      e.toString();
      return ResultModel.empty();
    }
  }

  Future<bool> submitThisVoteResult(List<int> voteCount) async {
    var response;
    try {
      for (int i = 0; i < voteCount.length; i++) {
        response = await http.get(
          Uri.parse(
              "http://localhost:8090/api/updateVoteCount/${voteCount[i]}"),
          headers: {
            "Content-Type": "application/json",
            "Accept": "application/json"
          },
        );
      }

      if (response.statusCode == 200) {
        return true;
      }
    } catch (e) {
      e.toString();
      return false;
    }

    return false;
  }
}
