class AccountModel {
  int? accoundId;
  String? systemUserID;
  String? userType;
  int? electionID;
  String? username;
  String? password;
  String? email;

  get getEmail => this.email;

  set setEmail(email) => this.email = email;

  get getAccoundId => this.accoundId;

  set setAccoundId(accoundId) => this.accoundId = accoundId;

  get getUserType => this.userType;

  set setUserType(userType) => this.userType = userType;

  get getSystemUserID => this.systemUserID;

  set setSystemUserID(systemUserID) => this.systemUserID = systemUserID;

  get getElectionID => this.electionID;

  set setElectionID(electionID) => this.electionID = electionID;

  get getUsername => this.username;

  set setUsername(username) => this.username = username;

  get getPassword => this.password;

  set setPassword(password) => this.password = password;

  AccountModel.empty();

 // AccountModel.result({});

  AccountModel.json({
    this.accoundId,
    this.systemUserID,
    this.email,
    this.username,
    this.password,
    this.userType,
  });

  //create factory json for account mode json
  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel.json(
      accoundId: json["AccountiD"] as int,
      systemUserID: json["SystemUserID"] as String,
      email: json["EmailAddress"] as String,
      username: json["Username"] as String,
      password: json["Password"] as String,
      userType: json["UserType"] as String,
    );
  }
}