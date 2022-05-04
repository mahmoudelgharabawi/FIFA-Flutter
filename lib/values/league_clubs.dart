import 'package:fifa/values/club_names.dart';

import 'league_names.dart';

ClubName clubName = ClubName();

/////////////
//default teams
List defaultChampionsLeagueClubs = [
  clubName.manchestercity,clubName.psg,clubName.rbleipzig,clubName.brugge,
  clubName.liverpool,clubName.porto,clubName.milan,clubName.atleticomadrid,
  clubName.borussiadortmund,clubName.ajax,clubName.sporting,clubName.besiktas,
  clubName.realmadrid,clubName.inter,clubName.shaktardonetsk,clubName.lyon,
  clubName.bayernmunique,clubName.barcelona,clubName.benfica,clubName.dinamokiev,
  clubName.manchesterunited,clubName.atalanta,clubName.villareal,clubName.dinamozagreb,
  clubName.sevilla,clubName.rbsalzburg,clubName.lille,clubName.wolfsburg,
  clubName.chelsea,clubName.juventus,clubName.zenit,clubName.malmo,
];
List defaultLibertadoresClubs = [
  clubName.palmeiras,clubName.deportivoTachira,clubName.emelec,clubName.monterrey,
  clubName.atleticopr,clubName.bolivar,clubName.caracas,clubName.libertad,
  clubName.bragantino,clubName.nacional,clubName.velezsarsfield,clubName.estudiantes,
  clubName.atleticomg,clubName.idelvalle,clubName.tolima,clubName.americamg,
  clubName.bocajuniors,clubName.corinthians,clubName.alwaysReady,clubName.deportivocali,
  clubName.riverplate,clubName.fortaleza,clubName.colocolo,clubName.alianzalima,
  clubName.colon,clubName.penarol,clubName.cerroporteno,clubName.olimpia,
  clubName.flamengo,clubName.univcatolica,clubName.talleres,clubName.sportingcristal,
];

///////////////////////////////////////////////////////////
//  CLUBS IN EACH LEAGUE
//////////////////////////////////////////////////////////
Map clubNameMap = {};

Map clubNameMapImmutable = {
  LeagueOfficialNames().inglaterra1 : {
    0: clubName.arsenal,1: clubName.astonvilla,2: clubName.brighton,3: clubName.bournemouth,
    4: clubName.brentford,5: clubName.chelsea,6: clubName.crystalpalace,7: clubName.everton,
    8: clubName.fulham,9: clubName.leedsunited,10: clubName.leicester,11: clubName.liverpool,
    12: clubName.manchestercity,13: clubName.manchesterunited,14: clubName.newcastle,15: clubName.nottinghamforest,
    16: clubName.tottenham,17: clubName.southampton,18: clubName.westham,19: clubName.wolves,
  },
  LeagueOfficialNames().inglaterra2 : {
    0: clubName.birmigham,1: clubName.blackburn,2: clubName.sunderland,3: clubName.burnley,
    4: clubName.hullcity,5: clubName.derbycount,6: clubName.huddersfield,7: clubName.middlesbrough,
    8: clubName.norwich,9: clubName.portsmouth,10: clubName.qpr, 11: clubName.plymouth,
    12: clubName.reading,13: clubName.sheffieldunited, 14: clubName.stoke, 15: clubName.swansea,
    16: clubName.watford,17:clubName.westbromwich,
  },
  LeagueOfficialNames().inglaterra3 : {
  },
  LeagueOfficialNames().italia1 : {
    0: clubName.atalanta, 1: clubName.bologna,2: clubName.cagliari,3: clubName.empoli,
    4: clubName.fiorentina,5: clubName.genoa,6: clubName.hellasVerona,7: clubName.inter,
    8: clubName.juventus,9: clubName.lazio,10: clubName.lecce,11: clubName.milan,
    12: clubName.napoli,13: clubName.parma,14: clubName.roma,15: clubName.sampdoria,
    16: clubName.sassuolo,17: clubName.spezia,18: clubName.torino,19: clubName.udinese,
  },
  LeagueOfficialNames().italia2 : {
    0: clubName.benevento, 1: clubName.brescia,2: clubName.crotone,3: clubName.monza,
    4: clubName.perugia,5: clubName.spal,6: clubName.venezia,7: clubName.pisa,
  },
  LeagueOfficialNames().espanha1 : {
    0: clubName.athleticbilbao,1: clubName.atleticomadrid,2: clubName.alaves,3: clubName.barcelona,
    4: clubName.cadiz,5: clubName.celtavigo,6: clubName.elche,7: clubName.espanyol,
    8: clubName.getafe,9: clubName.granada,10: clubName.levante,11: clubName.osasuna,
    12: clubName.rayoVallecano,13: clubName.realbetis,14: clubName.realmadrid,15: clubName.realsociedad,
    16: clubName.sevilla,17: clubName.valencia,18: clubName.valladolid,19: clubName.villareal,
  },
  LeagueOfficialNames().espanha2 : {
    0: clubName.almeria,1: clubName.girona,2: clubName.ibiza,3: clubName.lacoruna,
    4: clubName.lasPalmas,5: clubName.malaga,6: clubName.mallorca,7: clubName.sportingGijon,
    8: clubName.tenerife,9: clubName.zaragoza,
  },
  LeagueOfficialNames().alemanha1 : {
    0: clubName.augsburg,1: clubName.bayerleverkusen,2: clubName.bayernmunique,3: clubName.borussiadortmund,
    4: clubName.moenchengladbach,5: clubName.colonia,6: clubName.eintrachtfrankfurt,7: clubName.freiburg,
    8: clubName.hamburgo,9: clubName.herthaberlim,10: clubName.hoffenheim,11: clubName.mainz05,
    12: clubName.rbleipzig,13: clubName.schalke04,14: clubName.stuttgart,15: clubName.unionBerlin,
    16: clubName.werderbremen,17: clubName.wolfsburg,
  },
  LeagueOfficialNames().alemanha2 : {
    0: clubName.dynamoDresden,1: clubName.fortunaDusseldorf,2: clubName.arminiaBiefeld,3: clubName.kaiserslautern,
    4: clubName.nurnberg,5: clubName.stPauli,6: clubName.hannover96,7: clubName.bochum,
  },
  LeagueOfficialNames().franca1 : {
    0: clubName.angers,1: clubName.auxerre,2: clubName.bordeaux,3: clubName.brest,
    4: clubName.clermont,5: clubName.lens,6: clubName.lille,7: clubName.lorient,
    8: clubName.lyon,9: clubName.montpellier,10: clubName.monaco,11: clubName.nantes,
    12: clubName.nice,13: clubName.olympiquemarselha,14: clubName.psg,15: clubName.reims,
    16: clubName.rennes,17: clubName.saintetienne,18: clubName.strasbourg,19: clubName.toulouse,
  },
  LeagueOfficialNames().ptHol : {
    0: clubName.benfica,1: clubName.porto,2: clubName.sporting,3: clubName.braga,
    4: clubName.vitoriaguimaraes,5: clubName.maritimo,6: clubName.portimonense,7: clubName.boavista,
    8: clubName.ajax,9: clubName.psv,10: clubName.feyenoord,11: clubName.azAlkmaar,
    12: clubName.twente,13: clubName.utrecht,14: clubName.vitesse,15: clubName.heerenveen,
    16: clubName.coimbra,17: clubName.famalicao,
  },
  LeagueOfficialNames().turquiaGrecia : {
    0: clubName.olympiacos,1: clubName.aek,2: clubName.paok,3: clubName.panathinaikos,
    4: clubName.galatasaray,5: clubName.fenerbahce,6: clubName.besiktas,7: clubName.instanbul,
    8: clubName.trabzonspor,9: clubName.apoel,
  },
  LeagueOfficialNames().ligaEuropa : {
    0: clubName.anderlecht,1: clubName.brugge,2: clubName.standardliege,3: clubName.slaviaPraha,
    4: clubName.spartapraga,5: clubName.zurich,6: clubName.youngBoys,7: clubName.legiaWarszawa,
    8: clubName.celtic,9: clubName.glasgowrangers,10: clubName.rosenborg,11: clubName.malmo,
    12: clubName.copenhague,13: clubName.rbsalzburg,14: clubName.rapidviena,15: clubName.basel,
  },
  LeagueOfficialNames().lesteEuropeu : {
    0: clubName.cska,1: clubName.dinamoMoscou,2: clubName.krasnodar,3: clubName.lokomotivMoscou,
    4: clubName.rubinKazan,5: clubName.sochi,6: clubName.spartakmoscou,7: clubName.zenit,
    8: clubName.dinamokiev,9: clubName.shaktardonetsk,10: clubName.partizan,11: clubName.estrelavermelha,
    12: clubName.dinamozagreb,13: clubName.steauaBucureste,14: clubName.cskaSofia,15: clubName.ludogorets,
    16: clubName.astana,17: clubName.qarabag,
  },

  //AMÉRICA DO SUL
  LeagueOfficialNames().brasil1 : {
    0: clubName.palmeiras,1: clubName.atleticomg,2: clubName.atleticogo, 3: clubName.atleticopr,
    4: clubName.avai,5: clubName.botafogo,6: clubName.bragantino,7: clubName.ceara,
    8: clubName.corinthians,9: clubName.coritiba,10: clubName.cuiaba,11: clubName.flamengo,
    12: clubName.fluminense,13: clubName.fortaleza,14: clubName.goias,15: clubName.internacional,
    16: clubName.juventude,17: clubName.americamg,18: clubName.santos,19: clubName.saopaulo,
  },
  LeagueOfficialNames().brasil2 : {
    0: clubName.criciuma,1: clubName.bahia,2: clubName.chapecoense,3: clubName.crb,
    4: clubName.csa,5: clubName.cruzeiro,6: clubName.gremio,7: clubName.guarani,
    8: clubName.ituano,9: clubName.nautico,10: clubName.operarioPR,11: clubName.pontepreta,
    12: clubName.sampaio,13: clubName.sport,14: clubName.vasco,15: clubName.vilanova,
  },
  LeagueOfficialNames().brasil3 : {
    0: clubName.abc,1: clubName.brasilPelotas,2: clubName.brusque,3: clubName.figueirense,
    4: clubName.gremioNovorizontino,5: clubName.londrina,6: clubName.manaus,7: clubName.parana,
    8: clubName.paysandu,9:clubName.portuguesa,10: clubName.remo,11: clubName.santacruz,
    12: clubName.santoandre,13: clubName.saocaetano,14: clubName.tombense,15: clubName.vitoria,
  },
  LeagueOfficialNames().argentina : {
    0: clubName.argentinojuniors,1: clubName.banfield,2: clubName.bocajuniors,3: clubName.colon,
    4: clubName.defensayjusticia,5: clubName.estudiantes,6: clubName.gimnasia,7: clubName.godoyCruz,
    8: clubName.huracan,9: clubName.independiente,10: clubName.lanus,11: clubName.newells,
    12: clubName.racing,13: clubName.riverplate,14: clubName.rosariocentral,15:clubName.sanlorenzo,
    16: clubName.talleres,17:clubName.velezsarsfield,
  },
  LeagueOfficialNames().sulamericano : {
    0: clubName.cerroporteno,1: clubName.olimpia,2: clubName.guaraniPAR,3: clubName.libertad,
    4: clubName.nacional,5: clubName.penarol,6: clubName.colocolo,7: clubName.lau,
    8: clubName.univcatolica,9: clubName.bolivar,10: clubName.theStrongest,11: clubName.alwaysReady,
    12: clubName.alianzalima,13: clubName.jorge,14: clubName.sportingcristal,15: clubName.universitario,
    16: clubName.palestino,17: clubName.cienciano,
  },
  LeagueOfficialNames().colombia : {
    0: clubName.americadecali,1: clubName.atleticonacional,2: clubName.deportivocali,3: clubName.junior,
    4: clubName.imedellin,5: clubName.tolima,6: clubName.millonarios,7: clubName.santafe,
    8: clubName.caracas,9: clubName.deportivoTachira,
    10: clubName.barcelonaequ,11: clubName.emelec,12: clubName.ldu,13: clubName.idelvalle,
  },

  //AMÉRICA DO NORTE
  LeagueOfficialNames().mexico : {
    0: clubName.americamex,1: clubName.chivasguadalajara,2: clubName.cruzazul,3: clubName.monterrey,
    4: clubName.pachuca,5: clubName.pumas,6: clubName.tigres,7: clubName.toluca,
    8: clubName.tijuana,9: clubName.santosLaguna,10: clubName.puebla,11: clubName.necaxa,
    12: clubName.atlas,13: clubName.queretaro,14: clubName.leon,15: clubName.juarez,
  },
  LeagueOfficialNames().estadosUnidos : {
    0: clubName.atlantaunited,1: clubName.columbuscrew,2:clubName.dcunited,3: clubName.fcdallas,
    4: clubName.intermiami,5: clubName.losangelesfc,6: clubName.lagalaxy,7: clubName.minnesota,
    8: clubName.nerevolution,9: clubName.nycity,10: clubName.nyredbulls,11: clubName.orlando,
    12: clubName.portland,13: clubName.seattle,14: clubName.torontofc,15:clubName.vancouver,
  },

  //RESTO DO MUNDO
  LeagueOfficialNames().asia : {
    0: clubName.ghuagzhouevergrande,1: clubName.shanghaisipg,2: clubName.shandongluneng,3: clubName.kawasakifrontale,
    4: clubName.kashimaantlers,5: clubName.urawareddiamonds,6: clubName.visselkobe,7: clubName.pohang,
    8: clubName.jeonbuk,9: clubName.alhilal,10: clubName.alnassr,11: clubName.alain,
    12: clubName.alsadd,13: clubName.alahli,14: clubName.alduhail,15: clubName.aljazira,
  },
  LeagueOfficialNames().africa : {
    0: clubName.alahly,1: clubName.zamalek,2: clubName.mazembe,3: clubName.esperance,
    4: clubName.rajacasablanca,5: clubName.wydad,6: clubName.orlandoPirates,7: clubName.kaizer,
    8: clubName.mamelodi,9: clubName.agosto,10:clubName.sydney,11:clubName.melbourneVictory,
  },
  LeagueOfficialNames().outros : {
    0: clubName.alIttihad,1: clubName.alWahda,2: clubName.fcSeoul,3: clubName.ulsan,
    4: clubName.vardar,5: clubName.slovanBratislava, 6: clubName.helsinki,7: clubName.laskLinz,
    8: clubName.maccabiTelAviv,9: clubName.metz,10: clubName.caen,11: clubName.troyes,
    12: clubName.genk,13: clubName.midtjylland,14: clubName.montevideo,15: clubName.oncecaldas,
    16: clubName.mirassol,17: clubName.botafogoSP,
  },

};
