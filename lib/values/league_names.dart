import 'package:fifa/classes/words.dart';

class LeagueOfficialNames{
  final String championsLeague = 'Champions League';
  final String libertadores = 'Libertadores';
  final String concacaf = 'Concacaf champions';
  final String asiaafricaChampionsLeague = 'World Champions League';

  final String europaLeagueOficial = 'Europa League';
  final String copaSulAmericana = 'Copa Sul-Americana';

  final String resto = 'Resto do Mundo';
  final String mundial = 'Mundial de Clubes da FIFA';

  //LIGAS
  String inglaterra1 = 'Premier League';  String inglaterra2 = 'Championship'; String inglaterra3 = 'Championship2';
  String italia1 = 'Serie A TIM';  String italia2 = 'Serie B TIM';
  String espanha1 = 'La Liga';  String espanha2 = 'La Liga2';
  String franca1 = 'Ligue 1'; String franca2 = 'Ligue 2';
  String alemanha1 = 'Bundesliga';  String alemanha2 = 'Bundesliga 2';
  String portugal = 'Liga Portugal Bwin'; String turquiaGrecia = 'Liga Greco-Turca';
  String holanda = 'Eredivisie';
  String escocia = 'Scottish Premiership';
  String belgica = 'Jupiler Pro League';
  String suecia = 'Allsvenskan Sweden';
  String dinamarca = 'Superliga Dinamarquesa';
  String noruega = 'Liga Norueguesa';
  String austria = 'Liga Austriaca';
  String suica = 'Super Liga Suíça';
  String polonia = 'Ekstraklasa';
  String servia = 'Liga Servia';
  String grecia = 'Liga Grega';
  String repTcheca = 'Liga Tcheca';
  String croacia = 'Liga Croácia';
  String ucrania = 'Liga Ucrania';
  String cazaquistao = 'Super Liga do Cazaquistão';
  String ligaEuropa = 'Liga Europeia';  String lesteEuropeu = 'Leste Europeu';

  String brasil1 = 'Brasileirão';  String brasil2 = 'Brasileirão - Série B';String brasil3 = 'Brasileirão - Série C';
  String paulistao = 'Paulistão';
  String argentina = 'Campeonato Argentino';String sulamericano = 'Sul-Americano';
  String colombia = 'Merconorte';
  String uruguai = 'Campeonato uruguaio';
  String paraguai = 'Campeonato paraguaio';
  String chile = 'Campeonato chileno';
  String equador = 'Campeonato equatoriano';
  String venezuela = 'Campeonato venezuelano';
  String peru = 'Campeonato peruano';
  String bolivia = 'Campeonato boliviano';

  String mexico = 'Liga MX';String estadosUnidos = 'MLS';
  String asia = 'Liga Ásia';  String orienteMedio = 'Liga Oriente Médio';  String africa = 'Liga África';

  String japao = 'J1-League';
  String china = 'Liga China';
  String coreiaSul = 'K-League';
  String arabia = 'Liga Arábia Saudita';
  String eau = 'Liga EAU';
  String qatar = 'Liga qatar';
  String iran = 'Liga iran';

  String egito = 'Liga Egito';
  String marrocos = 'Liga Marrocos';
  String australia = 'A-League';
  String africaSul = 'Liga África do Sul';
  String outros = 'Outros';

  //COPAS
  String englandCup = 'FA Cup';String italyCup = 'Coppa Italia';String spainCup = 'Copa del Rey';
  String germanyCup = 'DFB Pokal';String franceCup = 'Coupe de France';
  String portugalCup = 'Taça de Portugal';String turkeyCup = 'Turkiye Kupasi';
  String ligaEuropaCup = 'Copa da Europa';String eastEuropeCup = 'Leste Europeu Copa';

  String brazilCup = 'Copa do Brasil';String argentinaCup = 'Copa Argentina';
  String sulamericanaCup = 'Copa America';String merconorteCup = 'Copa Merconorte';

  String mexicoCup = 'Copa MX';String usaCup = 'MLS Cup';
  String asiaCup = 'Asia Cup';String africaCup = 'África Cup';
  String othersCup = 'Outros Cup';

}

getInternationalLeagueNumber(String internationalLeague){
  if(internationalLeague == LeagueOfficialNames().championsLeague){
    return 0;
  }
  if(internationalLeague == LeagueOfficialNames().libertadores){
    return 1;
  }
  if(internationalLeague == LeagueOfficialNames().resto){
    return 2;
  }
  return -1;
}

List internationalLeagueNames = [LeagueOfficialNames().championsLeague,LeagueOfficialNames().libertadores];

//Pra adicionar uma nova liga adicione o index da liga aqui:
//Essas são as ligas que de fato estão no jogo
//ID<50 -> Champions League
//ID<70 -> Libertadores
List leaguesListRealIndex = [
  1,2,3,5,6, 7,8,  9,10,11,12,15,25,16, 20,21,    50,51,52,60,61,62,   70,71,  80, 85, 90
];

List getAvailableLeaguesNames(){
  List availableLeaguesNames = [];
  leaguesIndexFromName.forEach((leagueName, leagueID) {
    if(leaguesListRealIndex.contains(leagueID)){
      availableLeaguesNames.add(leagueName);
    }
  });
  return availableLeaguesNames;
}

int nLeaguesTotal = leaguesListRealIndex.length;

List leagueNames = [
  LeagueOfficialNames().inglaterra1,LeagueOfficialNames().inglaterra2,LeagueOfficialNames().inglaterra3,
  LeagueOfficialNames().italia1,LeagueOfficialNames().italia2,
  LeagueOfficialNames().espanha1,LeagueOfficialNames().espanha2,
  LeagueOfficialNames().franca1,LeagueOfficialNames().franca2,
  LeagueOfficialNames().alemanha1,LeagueOfficialNames().alemanha2,
  LeagueOfficialNames().portugal,LeagueOfficialNames().holanda,
  LeagueOfficialNames().turquiaGrecia,
  LeagueOfficialNames().ligaEuropa,LeagueOfficialNames().lesteEuropeu,

  LeagueOfficialNames().brasil1,LeagueOfficialNames().brasil2,LeagueOfficialNames().brasil3,
  LeagueOfficialNames().paulistao,
  LeagueOfficialNames().argentina,LeagueOfficialNames().sulamericano,LeagueOfficialNames().colombia,
  LeagueOfficialNames().mexico,LeagueOfficialNames().estadosUnidos,
  LeagueOfficialNames().asia,LeagueOfficialNames().orienteMedio,LeagueOfficialNames().africa,
  LeagueOfficialNames().outros,
];


Map leaguesIndexFromName = {
  LeagueOfficialNames().inglaterra1: 1,
  LeagueOfficialNames().inglaterra2: 2,
  LeagueOfficialNames().inglaterra3: 3,
  LeagueOfficialNames().italia1: 5,
  LeagueOfficialNames().italia2: 6,

  LeagueOfficialNames().espanha1: 7,
  LeagueOfficialNames().espanha2: 8,
  LeagueOfficialNames().franca1: 9,
  LeagueOfficialNames().franca2: 10,
  LeagueOfficialNames().alemanha1: 11,
  LeagueOfficialNames().alemanha2: 12,
  LeagueOfficialNames().portugal: 15,
  LeagueOfficialNames().turquiaGrecia: 16,

  LeagueOfficialNames().ligaEuropa: 20,
  LeagueOfficialNames().lesteEuropeu: 21,

  LeagueOfficialNames().holanda: 25,
  LeagueOfficialNames().escocia: 26,
  LeagueOfficialNames().belgica: 27,
  LeagueOfficialNames().suecia: 28,
  LeagueOfficialNames().cazaquistao: 35,

  LeagueOfficialNames().brasil1: 50,
  LeagueOfficialNames().brasil2: 51,
  LeagueOfficialNames().brasil3: 52,
  LeagueOfficialNames().paulistao: 53,
  LeagueOfficialNames().argentina: 60,
  LeagueOfficialNames().sulamericano: 61,
  LeagueOfficialNames().colombia: 62,

  LeagueOfficialNames().mexico: 70,
  LeagueOfficialNames().estadosUnidos: 71,
  LeagueOfficialNames().asia: 80,
  LeagueOfficialNames().orienteMedio: 81,
  LeagueOfficialNames().africa: 85,
  LeagueOfficialNames().outros: 90,
};

Map nTeamsRelegated = {
  LeagueOfficialNames().inglaterra1: 3,
  LeagueOfficialNames().inglaterra2: 3,
  LeagueOfficialNames().italia1: 3,

  LeagueOfficialNames().espanha1: 3,
  LeagueOfficialNames().franca1: 3,
  LeagueOfficialNames().alemanha1: 3,

  LeagueOfficialNames().brasil1: 3,
  LeagueOfficialNames().brasil2: 3,
};

Map nTeamsClassified = {
  LeagueOfficialNames().inglaterra1: 4,
  LeagueOfficialNames().italia1: 4,
  LeagueOfficialNames().espanha1: 4,
  LeagueOfficialNames().franca1: 4,
  LeagueOfficialNames().alemanha1: 4,

  LeagueOfficialNames().portugal: 4,
  LeagueOfficialNames().turquiaGrecia: 2,

  LeagueOfficialNames().ligaEuropa: 3,
  LeagueOfficialNames().lesteEuropeu: 3,

  LeagueOfficialNames().brasil1: 8,
  LeagueOfficialNames().argentina: 6,
  LeagueOfficialNames().sulamericano: 12,
  LeagueOfficialNames().colombia: 6,
};

bool leaguePlayInternationalCompetition(String name){
  bool playInternational = false;
  if(name == LeagueOfficialNames().inglaterra1 || name == LeagueOfficialNames().espanha1
      || name == LeagueOfficialNames().italia1 || name == LeagueOfficialNames().franca1
      || name == LeagueOfficialNames().alemanha1 || name == LeagueOfficialNames().portugal
      || name == LeagueOfficialNames().turquiaGrecia
      || name == LeagueOfficialNames().lesteEuropeu || name == LeagueOfficialNames().ligaEuropa
      || name == LeagueOfficialNames().brasil1 || name == LeagueOfficialNames().argentina
      || name == LeagueOfficialNames().sulamericano || name == LeagueOfficialNames().colombia){
    playInternational = true;
  }
  return playInternational;
}

String getLeague(String nationality){
  LeagueOfficialNames leagueName = LeagueOfficialNames();
  Map leaguesFromNationality = {
    Words.country.england: leagueName.inglaterra1,
    Words.country.italy: leagueName.italia1,
    Words.country.spain: leagueName.espanha1,
    Words.country.france: leagueName.franca1,
    Words.country.germany: leagueName.alemanha1,
    Words.country.portugal: leagueName.portugal,
    Words.country.netherlands: leagueName.holanda,
    Words.country.belgium: leagueName.belgica,
    Words.country.turkey: leagueName.turquiaGrecia,
    Words.country.sweden: leagueName.suecia,
    Words.country.switzerland: leagueName.suica,

    Words.country.brazil: leagueName.brasil1,
    Words.country.argentina: leagueName.argentina,
    Words.country.mexico: leagueName.mexico,
    Words.country.unitedStates: leagueName.estadosUnidos,

  };

  return leaguesFromNationality[nationality];

}

String getCup(String leagueName){
  Map cupsFromLeagues = {
    LeagueOfficialNames().inglaterra1: LeagueOfficialNames().englandCup,
    LeagueOfficialNames().inglaterra2: LeagueOfficialNames().englandCup,
    LeagueOfficialNames().inglaterra3: LeagueOfficialNames().englandCup,
    LeagueOfficialNames().italia1: LeagueOfficialNames().italyCup,
    LeagueOfficialNames().italia2: LeagueOfficialNames().italyCup,
    LeagueOfficialNames().espanha1: LeagueOfficialNames().spainCup,
    LeagueOfficialNames().espanha2: LeagueOfficialNames().spainCup,
    LeagueOfficialNames().franca1: LeagueOfficialNames().franceCup,
    LeagueOfficialNames().franca2: LeagueOfficialNames().franceCup,
    LeagueOfficialNames().alemanha1: LeagueOfficialNames().germanyCup,
    LeagueOfficialNames().alemanha2: LeagueOfficialNames().germanyCup,
    LeagueOfficialNames().portugal: LeagueOfficialNames().portugalCup,
    LeagueOfficialNames().turquiaGrecia: LeagueOfficialNames().turkeyCup,

    LeagueOfficialNames().ligaEuropa: LeagueOfficialNames().ligaEuropaCup,
    LeagueOfficialNames().lesteEuropeu: LeagueOfficialNames().eastEuropeCup,

    LeagueOfficialNames().brasil1: LeagueOfficialNames().brazilCup,
    LeagueOfficialNames().brasil2: LeagueOfficialNames().brazilCup,
    LeagueOfficialNames().brasil3: LeagueOfficialNames().brazilCup,
    LeagueOfficialNames().paulistao: LeagueOfficialNames().brazilCup,
    LeagueOfficialNames().argentina: LeagueOfficialNames().argentinaCup,
    LeagueOfficialNames().sulamericano: LeagueOfficialNames().sulamericanaCup,
    LeagueOfficialNames().colombia: LeagueOfficialNames().merconorteCup,

    LeagueOfficialNames().mexico: LeagueOfficialNames().mexicoCup,
    LeagueOfficialNames().estadosUnidos: LeagueOfficialNames().usaCup,
    LeagueOfficialNames().asia: LeagueOfficialNames().asiaCup,
    LeagueOfficialNames().orienteMedio: LeagueOfficialNames().asiaCup,
    LeagueOfficialNames().africa: LeagueOfficialNames().africaCup,
    LeagueOfficialNames().outros: LeagueOfficialNames().othersCup,
  };

 return cupsFromLeagues[leagueName] ?? LeagueOfficialNames().othersCup;
}
