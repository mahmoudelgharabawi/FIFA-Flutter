import 'package:fifa/classes/match/confronto.dart';

class ResultDict{

  String keyTeamName1 = "team1";
  String keyTeamName2 = "team2";
  String keyGol1 = "g1";
  String keyGol2 = "g2";
  String keyPenalty1 = "pen1";
  String keyPenalty2 = "pen2";
  String keyIda = "Ida";
  String keyVolta = "Volta";

  //////////////////////////////////////////////////////////////////////////////
  Map startNames(String team1, String team2){
    return {
      keyTeamName1: team1,
      keyTeamName2: team2,
    };
  }

  Map saveGoals(Map matchMap, int goal1, int goal2){
    matchMap[keyGol1] = goal1;
    matchMap[keyGol2] = goal2;

    return matchMap;
  }

  Map savePenaltis(Map matchMap, int penalti1, int penalti2){
    matchMap[keyPenalty1] = penalti1;
    matchMap[keyPenalty2] = penalti2;

    return matchMap;
  }


  //////////////////////////////////////////////////////////////////////////////
  Confronto getConfronto(Map matchMap){
    Confronto confronto = Confronto(
      clubName1: matchMap[keyTeamName1],
      clubName2: matchMap[keyTeamName2],
    );

    //GET GOALS
    try{
      confronto = Confronto(
        clubName1: matchMap[keyTeamName1],
        clubName2: matchMap[keyTeamName2],
      );
      confronto.setGoals(goal1: matchMap[keyGol1], goal2: matchMap[keyGol2]);
    }catch(e){
      //o jogo nao foi simulado
    }

    //GET PENALTIS
    try{
      confronto.setPenalties(penaltis1: matchMap[keyPenalty1], penaltis2: matchMap[keyPenalty2]);
    }catch(e){
      //o jogo nao teve penaltis
    }

    return confronto;
  }


}
