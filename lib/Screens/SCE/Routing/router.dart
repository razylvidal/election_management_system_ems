import 'package:election_management_system_ems/Screens/SCE/Routing/routes.dart';
import 'package:election_management_system_ems/Screens/SCE/candidate_page.dart';
import 'package:election_management_system_ems/Screens/SCE/election_page.dart';
import 'package:election_management_system_ems/Screens/SCE/overview.dart';
import 'package:election_management_system_ems/Screens/SCE/voter.dart';
import 'package:flutter/material.dart';

Route <dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case OverviewPageRoute:
      return _getPageRoute(OverviewPage());
    case ElectionPageRoute:
      return _getPageRoute(ElectionPage());
    case CandidatePageRoute:
      return _getPageRoute(CandidatePage());
    case VoterPageRoute:
      return _getPageRoute(VoterPage());
    default:
      return _getPageRoute(OverviewPage());
  }

}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) =>child);
}