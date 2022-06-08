import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginOperation {
  Future<bool> userLogin(String username, String password, String userType,
      String department) async {
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

  Future<bool> addUser(final String username, final String password,
      final String email, final String userType) async {
    const int Admin = 1;
    const int campgainMng = 2;
    var addUser;

    if (userType == "Admin") {
      addUser = json.encode({
        'UserTypeID': Admin,
        'Username': username,
        'Password': password,
        'email': email,
      });
    } else if (userType == "Campaign Manager") {
      addUser = json.encode({
        'UserTypeID': campgainMng,
        'Username': username,
        'Password': password,
        'email': email,
      });
    }

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