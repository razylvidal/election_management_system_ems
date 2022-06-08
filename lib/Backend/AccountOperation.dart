import 'package:election_management_system_ems/Backend/Mapping.dart';
import 'package:election_management_system_ems/Models/AccountModel.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AccountOperation {
  Future<List<AccountModel>> getAccounts() async {
    try {
      final response = await http.get(
        Uri.parse("http://localhost:8090/api/accounts"),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
      );

      print("wow ${Mapping.accounts.toList()}");

      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
      Mapping.accounts = parsed
          .map<AccountModel>((json) => AccountModel.fromJson(json))
          .toList();

      return Mapping.accounts;
    } catch (e) {
      e.toString();
      return [];
    }
  }
}