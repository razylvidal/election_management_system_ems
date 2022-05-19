import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:election_management_system_ems/Screens/SCE/Widgets/accounts.dart';
import 'package:election_management_system_ems/Screens/SCE/candidate_page.dart';
import 'package:election_management_system_ems/Screens/SCE/electionPage.dart';
import 'package:election_management_system_ems/Screens/SCE/voter.dart';
import 'package:flutter/material.dart';

Route <dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case ElectionPageRoute:
      return _getPageRoute(ElectionPage());
    case CandidatePageRoute:
      return _getPageRoute(CandidatePage());
    case VoterPageRoute:
      return _getPageRoute(VoterPage());
    case AccountPageRoute:
      return _getPageRoute(AccountPage());
    default:
      return _getPageRoute(ElectionPage());
  }

}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) =>child);
}