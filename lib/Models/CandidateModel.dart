class CandidateModel {
  String? positionID;
  String? partyListID;
  String? firstName;
  String? middlename;
  String? lastname;
  String? status;
  int? candidateID;
  String? gradeLevelID;
  String? link;
  int? voteCount;

  @override
  String toString() {
    return '$firstName $middlename $lastname';
  }

  get getPositionID => this.positionID;

  set setPositionID(positionID) => this.positionID = positionID;

  get getPartyListID => this.partyListID;

  set setPartyListID(partyListID) => this.partyListID = partyListID;

  get getFirstName => this.firstName;

  set setFirstName(firstName) => this.firstName = firstName;

  get getMiddlename => this.middlename;

  set setMiddlename(middlename) => this.middlename = middlename;

  get getLastname => this.lastname;

  set setLastname(lastname) => this.lastname = lastname;

  get getStatus => this.status;

  set setStatus(status) => this.status = status;

  get getCandidateID => this.candidateID;

  set setCandidateID(candidateID) => this.candidateID = candidateID;

  get getGradeLevelID => this.gradeLevelID;

  set setGradeLevelID(gradeLevelID) => this.gradeLevelID = gradeLevelID;

  get getLink => this.link;

  set setLink(link) => this.link = link;

  get getVoteCount => this.voteCount;

  set setVoteCount(voteCount) => this.voteCount = voteCount;

  CandidateModel({
    this.positionID,
    this.partyListID,
    this.firstName,
    this.middlename,
    this.lastname,
    this.status,
    this.candidateID,
    this.gradeLevelID,
    this.link,
    this.voteCount,
  });

  CandidateModel.fromJson({
    this.positionID,
    this.partyListID,
    this.firstName,
    this.middlename,
    this.lastname,
    this.status,
    this.candidateID,
    this.gradeLevelID,
    this.link,
    this.voteCount,
  });

  //create factory class to create candidate model
  factory CandidateModel.toJson(Map<String, dynamic> json) {
    return CandidateModel.fromJson(
      positionID: json['PositionID'] as String,
      partyListID: json['PartyListID'] as String,
      firstName: json['FirstName'] as String,
      middlename: json['Middlename'] as String,
      lastname: json['Lastname'] as String,
      status: json['Status'] as String,
      candidateID: json['CandidateID'] as int,
      gradeLevelID: json['GradeLevelID'] as String,
      link: json['link'] as String,
      voteCount: json['VoteCount'] as int,
    );
  }
}
