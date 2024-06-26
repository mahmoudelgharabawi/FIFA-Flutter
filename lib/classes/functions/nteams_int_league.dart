import 'package:fifa/values/league_names.dart';

class NTeamsIntLeague{

  late String leagueName;
  late String internationalName;
  late int nTeamsClassifiedValue;
  int offset = 0;

  NTeamsIntLeague({required this.leagueName, required this.internationalName}){
    offset = 0;
    List<String> allowedLeagues = [LeagueOfficialNames().championsLeague, LeagueOfficialNames().libertadores];
    if(allowedLeagues.contains(internationalName)){
      nTeamsClassifiedValue = nTeamsClassified[leagueName];

    }else{
      if(nTeamsClassified.containsKey(leagueName)) {
        offset = nTeamsClassified[leagueName];
      }
      nTeamsClassifiedValue = nTeamsClassified2[leagueName];
    }
  }


}