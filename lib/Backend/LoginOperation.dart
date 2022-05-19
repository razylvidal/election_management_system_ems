import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginOperation {
  Future<bool> userLogin(String username, String password) async {
    var payload = json.encode({
      'Username': username,
      'Password': password,
    });

    try {
      final response = await http.post(
        Uri.parse("http://localhost:8090/api/login"),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
        body: payload,
      );

      if (response.statusCode == 200) {
        return true;
      } else if (response.statusCode == 401) {
        return false;
      }
    } catch (e) {
      e.toString();
      return false;
    }

    return false;
  }

  Future<bool> addUser(final String username, final String password) async {
    var addUser = json.encode({
      'AccountID': 1,
      'UserTypeID': 1,
      'DepartmentID': 'SHS',
      'Username': username,
      'Password': password,
    });

    try {
      final response = await http.post(
        Uri.parse("http://localhost:8090/api/addAccount"),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
        },
        body: addUser,
      );

      return true;
    } catch (e) {
      e.toString();
      return false;
    }
  }
}
