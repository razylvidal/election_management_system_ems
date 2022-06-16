class ResultModel {
//   {
//     "TotalVote": 4,
//     "FirstName": "Brian",
//     "Lastname": "Macatangay"
// }

  int? totalVotes;
  String? position;
  String? firstName;
  String? lastName;

  get getPosition => this.position;

  set setPosition(position) => this.position = position;

  get getTotalVotes => this.totalVotes;

  set setTotalVotes(totalVotes) => this.totalVotes = totalVotes;

  get getFirstName => this.firstName;

  set setFirstName(firstName) => this.firstName = firstName;

  get getLastName => this.lastName;

  set setLastName(lastName) => this.lastName = lastName;

  ResultModel.empty();

  ResultModel.raw(String fname, String lname, String pos, int votes) {
    this.firstName = fname;
    this.lastName = lname;
    this.position = pos;
    this.totalVotes = votes;
  }

  ResultModel.full({
    this.totalVotes,
    this.firstName,
    this.lastName,
    this.position,
  });

  factory ResultModel.fromJson(Map<String, dynamic> json) {
    return ResultModel.full(
      totalVotes: json['TotalVote'] as int,
      firstName: json['FirstName'] as String,
      lastName: json['Lastname'] as String,
      position: json['PositionID'] as String,
    );
  }
}
