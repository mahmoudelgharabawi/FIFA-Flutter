class LeagueOfficialNames{
  String championsLeague = 'Champions';
  String libertadores = 'Libertadores';
  String resto = 'Resto do Mundo';

  String inglaterra1 = 'Premier League';  String inglaterra2 = 'Championship';
  String italia1 = 'Serie A TIM';  String italia2 = 'Serie B TIM';
  String espanha1 = 'La Liga';  String espanha2 = 'La Liga2';
  String franca1 = 'Ligue 1'; String franca2 = 'Ligue 2';
  String alemanha1 = 'Bundesliga';  String alemanha2 = 'Bundesliga 2';
  String ligaEuropa = 'Liga Europeia';  String lesteEuropeu = 'Leste Europeu';

  String brasil1 = 'Brasileirão';  String brasil2 = 'Brasileirão - Série B';String brasil3 = 'Brasileirão - Série C';
  String paulistao = 'Paulistão';
  String argentina = 'Campeonato Argentino';String sulamericano = 'Sul-Americano';String colombiaMexico = 'Liga Colombia MX';
  String estadosUnidos = 'MLS';
  String asia = 'Liga Ásia';  String orienteMedio = 'Liga Oriente Médio';  String africa = 'Liga África';
  String outros = 'Outros';
}

List internationalLeagueNames = [LeagueOfficialNames().championsLeague,LeagueOfficialNames().libertadores];

List leaguesListRealIndex = [
  1,2,5,7,  9,11,20,21,  50,51,60,61,  62,70, 80
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
  LeagueOfficialNames().inglaterra1,LeagueOfficialNames().inglaterra2,
  LeagueOfficialNames().italia1,LeagueOfficialNames().italia2,
  LeagueOfficialNames().espanha1,LeagueOfficialNames().espanha2,
  LeagueOfficialNames().franca1,LeagueOfficialNames().franca2,
  LeagueOfficialNames().alemanha1,LeagueOfficialNames().alemanha2,
  LeagueOfficialNames().ligaEuropa,LeagueOfficialNames().lesteEuropeu,
  LeagueOfficialNames().brasil1,LeagueOfficialNames().brasil2,LeagueOfficialNames().brasil3,
  LeagueOfficialNames().paulistao,
  LeagueOfficialNames().argentina,LeagueOfficialNames().sulamericano,LeagueOfficialNames().colombiaMexico,
  LeagueOfficialNames().estadosUnidos,
  LeagueOfficialNames().asia,LeagueOfficialNames().orienteMedio,LeagueOfficialNames().africa,
  LeagueOfficialNames().outros,
];

Map leaguesIndexFromName = {
  LeagueOfficialNames().inglaterra1: 1,
  LeagueOfficialNames().inglaterra2: 2,
  LeagueOfficialNames().italia1: 5,
  LeagueOfficialNames().italia2: 6,

  LeagueOfficialNames().espanha1: 7,
  LeagueOfficialNames().espanha2: 8,
  LeagueOfficialNames().franca1: 9,
  LeagueOfficialNames().franca2: 10,
  LeagueOfficialNames().alemanha1: 11,
  LeagueOfficialNames().alemanha2: 12,

  LeagueOfficialNames().ligaEuropa: 20,
  LeagueOfficialNames().lesteEuropeu: 21,

  LeagueOfficialNames().brasil1: 50,
  LeagueOfficialNames().brasil2: 51,
  LeagueOfficialNames().brasil3: 52,
  LeagueOfficialNames().paulistao: 53,
  LeagueOfficialNames().argentina: 60,
  LeagueOfficialNames().sulamericano: 61,
  LeagueOfficialNames().colombiaMexico: 62,

  LeagueOfficialNames().estadosUnidos: 70,
  LeagueOfficialNames().asia: 80,
  LeagueOfficialNames().orienteMedio: 81,
  LeagueOfficialNames().africa: 85,
  LeagueOfficialNames().outros: 90,
};
