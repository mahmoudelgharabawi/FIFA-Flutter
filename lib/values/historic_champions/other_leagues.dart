import 'package:fifa/values/club_names.dart';
import 'package:fifa/values/league_names.dart';

ClubName n = ClubName();
LeagueOfficialNames leagueName = LeagueOfficialNames();

Map<String,dynamic> mapOtherLeagues = {

  leagueName.rioSP : {
    1966.0: [n.botafogo,n.santos,n.vasco,n.corinthians,n.saopaulo,n.palmeiras,n.flamengo,n.bangu,n.fluminense,n.portuguesa],
    1965.0: [n.palmeiras,n.vasco,n.botafogo,n.flamengo,n.portuguesa,n.saopaulo,n.corinthians,n.fluminense,n.santos,n.americaRJ],
    1964.0: [n.botafogo,n.santos,n.palmeiras,n.flamengo,n.portuguesa,n.bangu,n.corinthians,n.vasco,n.fluminense,n.saopaulo],
    1963.0: [n.santos,n.corinthians,n.fluminense,n.botafogo,n.palmeiras,n.portuguesa,n.flamengo,n.saopaulo,n.vasco,n.olaria],
    1962.0: [n.botafogo,n.saopaulo,n.palmeiras,n.flamengo,n.americaRJ,n.corinthians,n.vasco,n.portuguesa,n.fluminense],
    1961.0: [n.flamengo,n.botafogo,n.vasco,n.palmeiras,n.santos,n.corinthians,n.fluminense,n.saopaulo,n.americaRJ,n.portuguesa],
    1960.0: [n.fluminense,n.botafogo,n.vasco,n.corinthians,n.flamengo,n.palmeiras,n.saopaulo,n.santos,n.portuguesa,n.americaRJ],
    1959.0: [n.santos,n.vasco,n.flamengo,n.palmeiras,n.saopaulo,n.americaRJ,n.botafogo,n.fluminense,n.corinthians,n.portuguesa],
    1958.0: [n.vasco,n.flamengo,n.corinthians,n.saopaulo,n.botafogo,n.fluminense,n.santos,n.palmeiras,n.americaRJ,n.portuguesa],
    1957.0: [n.fluminense,n.flamengo,n.vasco,n.santos,n.portuguesa,n.botafogo,n.saopaulo,n.palmeiras,n.corinthians,n.americaRJ],
    1956.0: [],
    1955.0: [n.portuguesa,n.palmeiras,n.botafogo,n.flamengo,n.santos,n.americaRJ,n.fluminense,n.vasco,n.saopaulo,n.corinthians],
    1954.0: [n.corinthians,n.fluminense,n.palmeiras,n.saopaulo,n.vasco,n.santos,n.flamengo,n.portuguesa,n.americaRJ,n.botafogo],
    1953.0: [n.corinthians,n.vasco,n.saopaulo,n.botafogo,n.fluminense,n.bangu,n.palmeiras,n.flamengo,n.santos,n.portuguesa],
    1952.0: [n.portuguesa,n.vasco,n.corinthians,n.fluminense,n.santos,n.botafogo,n.saopaulo,n.palmeiras,n.bangu,n.flamengo],
    1951.0: [n.palmeiras,n.corinthians,n.bangu,n.americaRJ,n.flamengo,n.portuguesa,n.vasco,n.saopaulo],
    1950.0: [n.corinthians,n.vasco,n.portuguesa,n.palmeiras,n.flamengo,n.saopaulo,n.botafogo,n.fluminense],
  },

  leagueName.latina : {
    1957.0: [n.realmadrid,n.benfica,n.milan,n.saintetienne],
    1956.0: [n.milan,n.athleticbilbao,n.benfica,n.nice],
    1955.0: [n.realmadrid,n.reims,n.milan,n.belenenses],
    1954.0: [],
    1953.0: [n.reims,n.milan,n.sporting,n.valencia],
    1952.0: [n.barcelona,n.nice,n.juventus,n.sporting],
    1951.0: [n.milan,n.lille,n.atleticomadrid,n.sporting],
    1950.0: [n.benfica,n.bordeaux,n.atleticomadrid,n.lazio],
    1949.0: [n.barcelona,n.sporting,n.torino,n.reims],
  },

  leagueName.mitropa : {
    1939.0: [n.ujpest,n.ferencvaros,n.bologna,n.ofkBelgrade],
    1938.0: [n.slaviaPraha,n.ferencvaros,n.juventus,n.genoa,],
    1937.0: [n.ferencvaros,n.lazio,n.austria,],
    1936.0: [n.austria,n.spartapraga,n.ujpest,n.inter,],
    1935.0: [n.spartapraga,n.ferencvaros,n.juventus,n.austria],
    1934.0: [n.bologna,n.admira,n.juventus,n.austria,],
    1933.0: [n.austria,n.inter,n.spartapraga,n.juventus,],
    1932.0: [n.bologna,],
    1931.0: [n.firstViena,n.wiener,n.spartapraga,n.roma],
    1930.0: [n.rapidviena,n.spartapraga,n.ferencvaros,n.inter,],
    1929.0: [n.ujpest,n.slaviaPraha,n.rapidviena,n.firstViena,],
    1928.0: [n.ferencvaros,n.rapidviena,n.viktoriaZizkov,],
    1927.0: [n.spartapraga,n.rapidviena,n.slaviaPraha,],
  },

  leagueName.cupwinners : {
    1999.0: [n.lazio,n.mallorca,],
    1998.0: [n.chelsea,n.stuttgart,],
    1997.0: [n.barcelona,n.psg],
    1996.0: [n.psg,n.rapidviena,],
    1995.0: [n.zaragoza,n.arsenal,],
    1994.0: [n.arsenal,n.parma,],
    1993.0: [n.parma,n.royalAntwerp,],
    1992.0: [n.werderbremen,n.monaco,],
    1991.0: [n.manchesterunited,n.barcelona,],
    1990.0: [n.sampdoria,n.anderlecht,],
    1989.0: [n.barcelona,n.sampdoria,],
    1988.0: [n.mechelen,n.ajax,],
    1987.0: [n.ajax,n.lokleipzig,],
    1986.0: [n.dinamokiev,n.atleticomadrid,],
    1985.0: [n.everton,n.rapidviena,],
    1984.0: [n.juventus,n.porto,],
    1983.0: [n.aberdeen,n.realmadrid,],
    1982.0: [n.barcelona,n.standardliege,],
    1981.0: [n.tbilisi,n.carlzeissjena,],
    1980.0: [n.valencia,n.arsenal,],
    1979.0: [n.barcelona,n.fortunaDusseldorf,],
    1978.0: [n.anderlecht,n.austria,],
    1977.0: [n.hamburgo,n.anderlecht,],
    1976.0: [n.anderlecht,n.westham,],
    1975.0: [n.dinamokiev,n.ferencvaros,],
    1974.0: [n.magdeburg,n.milan,],
    1973.0: [n.milan,n.leeds,],
    1972.0: [n.rangers,n.dinamoMoscou,],
    1971.0: [n.chelsea,n.realmadrid,],
    1970.0: [n.manchestercity,n.gornik,],
    1969.0: [n.slovanBratislava,n.barcelona,],
    1968.0: [n.milan,n.hamburgo,],
    1967.0: [n.bayernmunique,n.rangers,],
    1966.0: [n.dortmund,n.liverpool,],
    1965.0: [n.westham,n.munique1860,],
    1964.0: [n.sporting,n.mtk,],
    1963.0: [n.tottenham,n.atleticomadrid,],
    1962.0: [n.atleticomadrid,n.fiorentina,],
    1961.0: [n.fiorentina,n.rangers,],
  },

  leagueName.copaNordeste : {
    2022.0: [n.fortaleza,n.sport, n.nautico,n.crb,          n.ceara,n.botafogoPB,n.csa,n.alagoinhas,  ],
    2021.0: [n.bahia,n.ceara,n.fortaleza,n.vitoria,         n.crb,n.altos,n.csa,n.sampaio,            n.abc,n.treze,n.salgueiro,n.confianca,n.botafogoPB,n.julho4,n.sport,n.santacruz],
    2020.0: [n.ceara,n.bahia,n.fortaleza,n.confianca,       n.santacruz,n.vitoria,n.botafogoPB,n.sport,   n.nautico,n.abc,n.crb,n.csa,n.imperatriz,n.americaRN,n.freipaulistano,n.riverPI],
    2019.0: [n.fortaleza,n.botafogoPB,n.nautico,n.santacruz, n.ceara,n.csa,n.crb,n.vitoria,           n.bahia,n.abc,n.motoclub,n.confianca,n.salgueiro,n.sampaio,n.sergipe,n.altos],
    2018.0: [n.sampaio,n.bahia,n.abc,n.ceara,               n.vitoria,n.crb,n.santacruz,n.botafogoPB, n.nautico,n.globo,n.confianca,n.csa,n.treze,n.altos,n.salgueiro,n.ferroviario],
    2017.0: [n.bahia,n.sport,n.santacruz,n.vitoria,         n.campinense,n.riverPI,n.itabaiana,n.sergipe,  n.nautico,n.crb,n.americaRN,n.abc,n.fortaleza,n.altos,n.csa,n.sampaio,n.botafogoPB,n.juazeirense,n.motoclub,n.uniclinic],
    2016.0: [n.santacruz,n.campinense,n.bahia,n.sport,      n.ceara,n.salgueiro,n.crb,n.fortaleza,    n.sampaio,n.conquista,n.americaRN,n.coruripe,n.riverPI,n.estanciano,n.botafogoPB,n.abc,n.imperatriz,n.confianca,n.juazeirense,n.flamengoPI],
    2015.0: [n.ceara,n.bahia,n.vitoria,n.sport,             n.fortaleza,n.americaRN,n.salgueiro,n.campinense,  n.nautico,n.riverPI,n.coruripe,n.crb,n.motoclub,n.sampaio,n.globo,n.confianca,n.piaui,n.serrano,n.socorrense,n.botafogoPB],
    2014.0: [n.sport,n.ceara,n.americaRN,n.santacruz,       n.csa,n.crb,n.vitoria,n.guarany,          n.bahia,n.potiguar,n.nautico,n.sergipe,n.botafogoPB,n.treze,n.confianca,n.conquista],
    2013.0: [n.campinense,n.asa,n.fortaleza,n.ceara,        n.vitoria,n.santacruz,n.sport,n.abc,      n.confianca,n.bahia,n.americaRN,n.crb,n.salgueiro,n.itabaiana,n.sousa,n.feirense],
    2012.0: [],
    2011.0: [],
    2010.0: [n.vitoria,n.abc,n.csa,n.treze,      n.bahia,n.ceara,n.crb,n.santacruz,n.americaRN,n.nautico,n.fortaleza,n.botafogoPB,n.fluminenseFeira,n.confianca,n.sergipe],
    2009.0: [],
    2008.0: [],
    2007.0: [],
    2006.0: [],
    2005.0: [],
    2004.0: [],
    2003.0: [n.vitoria,n.fluminenseFeira,n.abc,n.americaRN,  n.sergipe,n.ceara,n.crb,n.csa,n.corinthiansAL,n.treze,n.palmeirasBA],
    2002.0: [n.bahia,n.vitoria,n.nautico,n.santacruz,        n.fluminenseFeira,n.crb,n.csa,n.americaRN,n.fortaleza,n.sport,n.abc,n.botafogoPB,n.treze,n.ceara,n.sergipe,n.confianca],
    2001.0: [n.bahia,n.sport,n.nautico,n.fortaleza,          n.santacruz,n.abc,n.vitoria,n.treze,n.ceara,n.csa,n.crb,n.sergipe,n.fluminenseFeira,n.confianca,n.americaRN,n.botafogoPB],
    2000.0: [n.sport,n.vitoria,n.sergipe,n.pocoes,         n.americaRN,n.abc,n.miguelense,n.treze,n.bahia,n.santacruz,n.ceara,n.botafogoPB,n.juazeirense,n.coritibaSE,n.csa,n.guaranyjuazeiro],
    1999.0: [n.vitoria,n.bahia,n.sport,n.csa,              n.botafogoPB,n.americaRN,n.sergipe,n.abc,     n.crb,n.portoPE,n.ceara,n.ferroviario,n.baraunas,n.campinense,n.juazeirense,n.lagartense],
    1998.0: [n.americaRN,n.vitoria,n.bahia,n.botafogoPB,   n.santacruz,n.ceara,n.abc,n.fortaleza,n.sport,n.fluminenseFeira,n.csa,n.crb,n.sergipe,n.confianca,n.nautico,n.treze],
    1997.0: [n.vitoria,n.bahia,n.ceara,n.sport,            n.fluminenseFeira,n.nautico,n.abc,n.santacruz,n.csa,n.santacruzPB,n.ferroviario,n.confianca,n.sergipe,n.crb,n.americaRN,n.botafogoPB],
    1996.0: [],
    1995.0: [],
    1994.0: [n.sport,n.crb,n.bahia,n.cruzeiroAL,           n.botafogoPB,n.guarany,n.santacruz,n.americaRN,n.csa,n.abc,n.santacruz,n.nautico,n.fortaleza,n.capela,n.asa,n.vitoria],
  },
  
};