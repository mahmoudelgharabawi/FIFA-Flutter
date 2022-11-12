import 'package:fifa/values/club_names.dart';
import 'package:fifa/values/league_names.dart';


ClubName _name = ClubName();
LeagueOfficialNames leagueName = LeagueOfficialNames();

Map<String,dynamic> mapNorthAmerica = {
  /////////////////////////////////////////////////////////////////
  // AMERICA DO NORTE
  ///////////////////////////////////////////////////////////////
  leagueName.mexico : {
    //APERTURA
    2022.0: [],
    2021.0: [_name.atlas,_name.leon,_name.pumas,_name.tigres,                       _name.americamex,_name.santosLaguna,_name.toluca,_name.puebla,_name.cruzazul,_name.monterrey,     _name.chivas,_name.sanluis,_name.mazatlan,_name.necaxa,_name.pachuca,_name.juarez,_name.queretaro,_name.tijuana],
    2020.0: [_name.leon,_name.pumas,_name.chivas,_name.cruzazul,                    _name.americamex,_name.monterrey,_name.tigres,_name.santosLaguna,_name.pachuca,_name.necaxa,      _name.toluca,_name.puebla,_name.juarez,_name.mazatlan,_name.tijuana,_name.atlas,_name.queretaro,_name.sanluis],
    2019.0: [_name.monterrey,_name.americamex,_name.necaxa,_name.morelia,           _name.santosLaguna,_name.leon,_name.tigres,_name.queretaro,_name.pachuca,_name.chivas,            _name.tijuana,_name.cruzazul,_name.pumas,_name.atlas,_name.sanluis,_name.juarez,_name.toluca,_name.puebla,_name.veracruz],
    2018.0: [_name.americamex,_name.cruzazul,_name.monterrey,_name.pumas,           _name.santosLaguna,_name.tigres,_name.toluca,_name.queretaro,_name.morelia,_name.pachuca,         _name.chivas,_name.puebla,_name.lobos,_name.leon,_name.tijuana,_name.necaxa,_name.atlas,_name.veracruz],
    2017.0: [_name.tigres,_name.monterrey,_name.americamex,_name.morelia,           _name.toluca,_name.cruzazul,_name.leon,_name.atlas,_name.necaxa,_name.lobos,                      _name.tijuana,_name.pachuca,_name.chivas,_name.santosLaguna,_name.puebla,_name.queretaro,_name.veracruz],
    2016.0: [_name.tigres,_name.americamex,_name.leon,_name.necaxa,                 _name.tijuana,_name.pachuca,_name.chivas,_name.pumas,_name.monterrey,_name.toluca,                _name.queretaro,_name.puebla,_name.morelia,_name.cruzazul,_name.atlas,_name.santosLaguna,_name.veracruz,_name.jaguares],
    2015.0: [_name.tigres,_name.pumas,_name.toluca,_name.americamex,                _name.leon,_name.jaguares,_name.puebla,_name.veracruz,_name.monterrey,_name.morelia,              _name.queretaro,_name.pachuca,_name.chivas,_name.cruzazul,_name.santosLaguna,_name.atlas,_name.tijuana,_name.dorados],
    2014.0: [_name.americamex,_name.tigres,_name.monterrey,_name.toluca,            _name.atlas,_name.jaguares,_name.pachuca,_name.pumas,_name.santosLaguna,_name.leon,               _name.tijuana,_name.queretaro,_name.cruzazul,_name.leonesNegros,_name.puebla,_name.chivas,_name.veracruz,_name.morelia],
    2013.0: [_name.leon,_name.americamex,_name.santosLaguna,_name.toluca,           _name.cruzazul,_name.morelia,_name.queretaro,_name.tigres,_name.jaguares,_name.tijuana,           _name.monterrey,_name.veracruz,_name.puebla,_name.pachuca,_name.atlas,_name.chivas,_name.atlante,_name.pumas],
    2012.0: [_name.tijuana,_name.toluca,_name.leon,_name.americamex,                _name.morelia,_name.cruzazul,_name.monterrey,_name.chivas,_name.santosLaguna,_name.pumas,         _name.jaguares,_name.tigres,_name.pachuca,_name.atlante,_name.sanluis,_name.puebla,_name.atlas,_name.queretaro],
    2011.0: [_name.tigres,_name.santosLaguna,_name.queretaro,_name.morelia,         _name.chivas,_name.cruzazul,_name.jaguares,_name.pachuca,_name.pumas,_name.sanluis,               _name.monterrey,_name.puebla,_name.toluca,_name.atlante,_name.tijuana,_name.tecos,_name.americamex,_name.atlas],
    2010.0: [_name.monterrey,_name.santosLaguna,_name.pumas,_name.americamex,       _name.toluca,_name.cruzazul,_name.pachuca,_name.morelia,_name.pumas,_name.chivas,_name.sanLuisPotosi,  _name.puebla,_name.tigres,_name.tecos,_name.jaguares,_name.atlante,_name.atlas,_name.queretaro,_name.necaxa],
    2009.0: [_name.monterrey,_name.cruzazul,_name.toluca,_name.morelia,             _name.americamex,_name.santosLaguna,_name.puebla,_name.pachuca,_name.atlante,_name.tigres,        _name.sanLuisPotosi,_name.tecos,_name.jaguares,_name.chivas,_name.atlas,_name.queretaro,_name.pumas,_name.indios],
    2008.0: [_name.toluca,_name.cruzazul,_name.santosLaguna,_name.atlante,          _name.sanLuisPotosi,_name.pumas,_name.tigres,_name.tecos,_name.chivas,_name.morelia,_name.atlas,  _name.pachuca,_name.americamex,_name.monterrey,_name.indios,_name.jaguares,_name.necaxa,_name.puebla],
    2007.0: [_name.atlante,_name.pumas,_name.chivas,_name.santosLaguna,             _name.toluca,_name.sanLuisPotosi,_name.americamex,_name.cruzazul,_name.pachuca,_name.morelia,     _name.necaxa,_name.jaguares,_name.veracruz,_name.puebla,_name.tecos,_name.tigres,_name.monterrey,_name.atlas],
    2006.0: [_name.chivas,_name.toluca,_name.americamex,_name.pachuca,              _name.cruzazul,_name.pumas,_name.monterrey,_name.atlas,_name.veracruz,_name.jaguares,             _name.atlante,_name.morelia,_name.sanLuisPotosi,_name.queretaro,_name.necaxa,_name.tigres,_name.tecos,_name.santosLaguna],
    2005.0: [_name.toluca,_name.monterrey,_name.pachuca,_name.tigres,               _name.americamex,_name.necaxa,_name.cruzazul,_name.tecos,_name.atlas,_name.jaguares,              _name.santosLaguna,_name.morelia,_name.chivas,_name.dorados,_name.sanLuisPotosi,_name.pumas,_name.atlante,_name.veracruz],
    2004.0: [_name.pumas,_name.monterrey,_name.atlas,_name.atlante,                 _name.veracruz,_name.toluca,_name.pachuca,_name.chivas,_name.tigres,_name.morelia,                _name.necaxa,_name.puebla,_name.americamex,_name.santosLaguna,_name.jaguares,_name.cruzazul,_name.dorados,_name.tecos],
    2003.0: [_name.pachuca,_name.tigres,_name.atlante,_name.toluca,                 _name.pumas,_name.santosLaguna,_name.tecos,_name.necaxa,_name.chivas,_name.americamex,            _name.cruzazul,_name.veracruz,_name.morelia,_name.monterrey,_name.irapuato,_name.jaguares,_name.puebla,_name.atlas,_name.sanLuisPotosi,_name.queretaro],
    2002.0: [_name.toluca,_name.morelia,_name.santosLaguna,_name.pumas,             _name.americamex,_name.tecos,_name.cruzazul,_name.chivas,_name.necaxa,_name.atlante,              _name.sanLuisPotosi,_name.tigres,_name.queretaro,_name.monterrey,_name.atlas,_name.puebla,_name.celaya,_name.veracruz,_name.jaguares,_name.pachuca],
    //INVIERNO
    2001.0: [_name.pachuca,_name.tigres,_name.toluca,_name.cruzazul,                _name.necaxa,_name.atlante,_name.chivas,_name.santosLaguna,_name.americamex,_name.puebla, _name.atlas,_name.morelia,_name.monterrey,_name.irapuato,_name.tecos,_name.celaya,_name.leon,_name.lapiedad,_name.pumas],
    2000.0: [_name.morelia,_name.toluca,_name.santosLaguna,_name.atlas,             _name.cruzazul,_name.necaxa,_name.pachuca,_name.americamex,_name.irapuato,_name.tecos,    _name.tigres,_name.monterrey,_name.pumas,_name.leon,_name.atlante,_name.puebla,_name.chivas,_name.celaya],
    1999.0: [_name.pachuca,_name.cruzazul,_name.atlas,_name.americamex,             _name.toluca,_name.necaxa,_name.chivas,_name.tecos,_name.tigres,_name.morelia,            _name.pumas,_name.puebla,_name.monterrey,_name.santosLaguna,_name.celaya,_name.leon,_name.atlante,_name.torosNeza],
    1998.0: [_name.necaxa,_name.chivas,_name.atlas,_name.pumas,                     _name.cruzazul,_name.toluca,_name.tecos,_name.morelia,_name.tigres,_name.americamex,      _name.celaya,_name.atlante,_name.monterrey,_name.santosLaguna,_name.leon,_name.pachuca,_name.torosNeza,_name.puebla],
    1997.0: [_name.cruzazul,_name.leon,_name.atlante,_name.americamex,              _name.chivas,_name.morelia,_name.atlas,_name.torosNeza,_name.monterrey,_name.veracruz,    _name.celaya,_name.toluca,_name.puebla,_name.necaxa,_name.tigres,_name.pumas,_name.tecos,_name.santosLaguna],
    //1996.0: [_name.santosLaguna,_name.necaxa,_name.torosNeza,_name.puebla,          _name.atlante,_name.chivas,_name.toluca,_name.atlas,_name.leon,_name.cruzazul,            _name.monterrey,_name.pumas,_name.veracruz,_name.tecos,_name.americamex,_name.celaya,_name.pachuca,_name.morelia],
    //NORMAL
    1996.0: [_name.necaxa,_name.celaya,_name.americamex,_name.veracruz,             _name.cruzazul,_name.atlas,_name.monterrey,_name.pumas,_name.leon,_name.torosNeza,        _name.tigres,_name.chivas,_name.tecos,_name.santosLaguna,_name.toluca,_name.morelia,_name.atlante,_name.puebla],
    1995.0: [_name.necaxa,_name.cruzazul,_name.chivas,_name.americamex,             _name.tecos,_name.pumas,_name.puebla,_name.santosLaguna,_name.veracruz,_name.atlante,     _name.monterrey,_name.torosNeza,_name.atlas,_name.leon,_name.morelia,_name.toluca,_name.correcaminos,_name.tigres,_name.tampico],
    1994.0: [_name.tecos,_name.santosLaguna,_name.americamex,_name.toluca,          _name.cruzazul,_name.atlas,_name.chivas,_name.atlante,_name.necaxa,_name.morelia,         _name.pumas,_name.leon,_name.monterrey,_name.puebla,_name.veracruz,_name.torosNeza,_name.tigres,_name.leonesNegros,_name.correcaminos,_name.queretaro],
    1993.0: [_name.atlante,_name.monterrey,_name.leon,_name.americamex,             _name.necaxa,_name.tecos,_name.cruzazul,_name.pumas,_name.tigres,_name.puebla,            _name.veracruz,_name.atlas,_name.chivas,_name.toluca,_name.morelia,_name.leonesNegros,_name.santosLaguna,_name.pachuca,_name.queretaro,_name.correcaminos],
    1992.0: [_name.leon,_name.puebla,_name.cruzazul,_name.necaxa,                   _name.atlante,_name.chivas,_name.pumas,_name.correcaminos,_name.americamex,               _name.tigres,_name.toluca,_name.monterrey,_name.atlas,_name.morelia,_name.santosLaguna,_name.queretaro,_name.tecos,_name.leonesNegros,_name.cobras],
    1991.0: [_name.pumas,_name.americamex,_name.puebla,_name.chivas,                _name.monterrey,_name.cruzazul,_name.leonesNegros,_name.leon,_name.atlas,_name.veracruz,  _name.toluca,_name.tigres,_name.morelia,_name.necaxa,_name.correcaminos,_name.tecos,_name.cobras,_name.queretaro,_name.santosLaguna,_name.irapuato],
    1990.0: [_name.puebla,_name.leonesNegros,_name.pumas,_name.americamex,          _name.tigres,_name.correcaminos,_name.necaxa,_name.toluca,_name.monterrey,_name.morelia,  _name.chivas,_name.cobras,_name.atlas,_name.irapuato,_name.veracruz,_name.tecos,_name.santosLaguna,_name.cruzazul,_name.tampico,_name.atlante],
    1989.0: [_name.americamex,_name.cruzazul,_name.chivas,_name.tampico,            _name.pumas,_name.puebla,_name.atlante,_name.tecos,                _name.necaxa,_name.morelia,_name.leonesNegros,_name.correcaminos,_name.tigres,_name.toluca,_name.irapuato,_name.monterrey,_name.santosLaguna,_name.atlas,_name.atlPotosino],
    1988.0: [_name.americamex,_name.pumas,_name.morelia,_name.leonesNegros,         _name.chivas,_name.tecos,_name.toluca,_name.puebla,                 ],
    1987.0: [_name.chivas,_name.cruzazul,_name.puebla,_name.morelia,                _name.americamex,_name.tigres,_name.tecos,_name.monterrey,          ],
    1986.0: [_name.monterrey,_name.tampico,_name.chivas,_name.americamex,           _name.puebla,_name.cruzazul,_name.morelia,_name.atlante,            ],
    1985.0: [_name.americamex,_name.pumas,_name.atlas,_name.leon,                   _name.leonesNegros,_name.cruzazul,_name.chivas,_name.puebla,        ],
    1984.0: [_name.americamex,_name.chivas,_name.pumas,_name.cruzazul,              _name.atlante,_name.tecos,_name.tigres,_name.monterrey,             ],
    1983.0: [_name.puebla,_name.chivas,_name.leonesNegros,_name.americamex,         _name.atlante,_name.toluca,_name.tecos,_name.atlPotosino,           ],
    1982.0: [_name.tigres,_name.atlante,_name.americamex,_name.depNeza,             _name.zacatepec,_name.leonesNegros,_name.monterrey,_name.atlEspanol, ],
    1981.0: [_name.pumas,_name.cruzazul,_name.zacatepec,_name.depNeza,              _name.chivas,_name.toluca,_name.atlEspanol,_name.tecos,              _name.atlante,_name.monterrey,_name.tigres,_name.puebla,    _name.americamex,_name.atlPotosino,_name.tampico,_name.leonesNegros,  ],
    1980.0: [_name.cruzazul,_name.tigres,_name.atlante,_name.americamex,            _name.depNeza,_name.pumas,_name.zacatepec,_name.tampico],
    1979.0: [_name.cruzazul,_name.pumas,_name.tigres,_name.toluca,                  _name.americamex,_name.monterrey,_name.atlPotosino,_name.zacatepec,],
    1978.0: [_name.tigres,_name.pumas,_name.cruzazul,_name.tampico,                 _name.americamex,_name.toluca,_name.tecos,_name.leonesNegros,],
    1977.0: [_name.pumas,_name.leonesNegros,_name.americamex,_name.cruzazul,        _name.atlPotosino,_name.sanLuisPotosi,_name.atlEspanol,_name.chivas,],
    1976.0: [_name.americamex,_name.leonesNegros,_name.curtidores,_name.monterrey,  _name.pumas,_name.leon,_name.cruzazul,_name.toluca,_name.santosLaguna,_name.atlEspanol,          _name.atlas,_name.tigres,_name.tecos,_name.chivas,_name.jalisco,_name.zacatepec,_name.veracruz,_name.puebla,_name.atlante,_name.atlPotosino],
    1975.0: [_name.toluca,_name.leon,_name.curtidores,_name.cruzazul,               _name.atlEspanol,_name.americamex,_name.monterrey,_name.leonesNegros,_name.atlas,_name.puebla,   _name.chivas,_name.jalisco,_name.tigres,_name.pumas,_name.veracruz,_name.zacatepec,_name.atlPotosino,_name.atlante,_name.santosLaguna,_name.madero],
    1974.0: [_name.cruzazul,_name.atlEspanol,_name.puebla,_name.monterrey,          _name.leon,_name.toluca,_name.pumas,_name.americamex,],
    1973.0: [_name.cruzazul,_name.leon,_name.atlas,_name.atlEspanol,                _name.americamex,_name.toluca,_name.pumas,_name.puebla,],
    1972.0: [_name.cruzazul,_name.americamex,_name.chivas,_name.monterrey,          _name.jalisco,_name.leon,_name.puebla,_name.atlante,],
    1971.0: [_name.americamex,_name.toluca,_name.monterrey,_name.leon,              _name.leon,_name.zacatepec,_name.cruzazul,_name.pumas,_name.atlante,_name.veracruz,      _name.puebla,_name.necaxa,_name.torreon,_name.chivas,_name.irapuato,_name.pachuca,_name.santosLaguna,_name.atlas],
    //1970.0: [_name.cruzazul,_name.chivas,_name.leon,_name.toluca,                   _name.pachuca,_name.atlas,_name.monterrey,_name.torreon,_name.pumas,_name.santosLaguna,  _name.veracruz,_name.atlante,_name.irapuato,_name.americamex,_name.necaxa,_name.oro],
    1970.0: [_name.chivas,_name.cruzazul,_name.veracruz,_name.toluca,               _name.necaxa,_name.americamex,_name.leon,_name.pachuca,_name.monterrey,_name.atlante,    _name.atlante,_name.oro,_name.atlas,_name.pumas,_name.irapuato,_name.torreon,_name.santosLaguna],
    1969.0: [_name.cruzazul,_name.chivas,_name.toluca,_name.pumas,                  _name.americamex,_name.atlas,_name.leon,_name.atlante,_name.necaxa,_name.pachuca,        _name.monterrey,_name.veracruz,_name.santosLaguna,_name.irapuato,_name.nuevoLeon,_name.oro],
    1968.0: [_name.toluca,_name.pumas,_name.veracruz,_name.necaxa,                  _name.leon,_name.chivas,_name.cruzazul,_name.atlante,_name.americamex,_name.atlas,       _name.irapuato,_name.pachuca,_name.nuevoLeon,_name.monterrey,_name.oro,_name.morelia],
    1967.0: [_name.toluca,_name.americamex,_name.chivas,_name.necaxa,               _name.leon,_name.nuevoLeon,_name.atlas,_name.monterrey,_name.irapuato,_name.cruzazul,    _name.oro,_name.atlante,_name.pumas,_name.veracruz,_name.morelia,_name.madero],
    1966.0: [_name.americamex,_name.atlas,_name.chivas,_name.monterrey,             _name.atlante,_name.pumas,_name.necaxa,_name.morelia,_name.leon,_name.irapuato,          _name.veracruz,_name.toluca,_name.cruzazul,_name.madero,_name.oro,_name.zacatepec],
    1965.0: [_name.chivas,_name.oro,],
    1964.0: [_name.chivas,_name.americamex,],
    1963.0: [_name.oro,_name.chivas,],
    1962.0: [_name.chivas,_name.americamex,],
    1961.0: [_name.chivas,_name.oro,],
    1960.0: [_name.chivas,_name.americamex,],
    1959.0: [_name.chivas,_name.leon,],
    1958.0: [_name.zacatepec,_name.toluca,],
    1957.0: [_name.chivas,_name.toluca,],
    1956.0: [_name.leon,_name.oro,],
    1955.0: [_name.zacatepec,_name.chivas,],
    1954.0: [],
    1953.0: [_name.tampico,_name.zacatepec,],
    1952.0: [_name.leon,_name.chivas,],
    1951.0: [_name.atlas,_name.atlante,],
    1950.0: [_name.veracruz,_name.atlante,],
  },
  leagueName.estadosUnidos : {
    2022.0: [],
    2021.0: [_name.nycity,_name.portland,_name.philadelphia,_name.realSaltLake,        _name.nerevolution,_name.colorado,_name.seattle,_name.kansas,_name.nashville,_name.atlanta,_name.orlando,_name.minnesota,_name.vancouver,_name.nyredbulls,_name.lagalaxy,_name.dcunited,_name.columbuscrew,_name.montreal,_name.losangelesfc,_name.intermiami,],
    2020.0: [_name.columbuscrew,_name.seattle,_name.nerevolution,_name.minnesota,      _name.philadelphia,_name.toronto,_name.kansas,_name.orlando,_name.nycity,_name.portland,_name.colorado,_name.fcdallas,_name.losangelesfc,_name.nyredbulls,_name.nashville,_name.sanJoseEarthquakes,_name.vancouver,_name.montreal,_name.intermiami,_name.lagalaxy],
    2019.0: [_name.seattle,_name.toronto,_name.losangelesfc,_name.atlanta,             _name.nycity,_name.philadelphia,_name.realSaltLake,_name.minnesota,_name.lagalaxy,_name.dcunited,_name.portland,_name.nyredbulls,_name.fcdallas,_name.nerevolution,_name.sanJoseEarthquakes,_name.colorado,_name.chicago,_name.montreal,_name.houston,_name.columbuscrew,],
    2018.0: [_name.atlanta,_name.portland,_name.nyredbulls,_name.kansas,               _name.nycity,_name.seattle,_name.columbuscrew,_name.fcdallas,_name.realSaltLake,_name.philadelphia,_name.houston,_name.chicago,_name.nerevolution,_name.dcunited,_name.lagalaxy,_name.minnesota,_name.orlando,_name.sanJoseEarthquakes,_name.colorado,_name.losangelesfc],
    2017.0: [_name.toronto,_name.seattle,_name.columbuscrew,_name.houston,             _name.nycity,_name.chicago,_name.atlanta,_name.portland,_name.vancouver,_name.nyredbulls,_name.kansas,_name.sanJoseEarthquakes,_name.fcdallas,_name.realSaltLake,_name.nerevolution,_name.philadelphia,_name.montreal,_name.orlando,_name.minnesota,_name.colorado,_name.dcunited,_name.lagalaxy],
    2016.0: [_name.seattle,_name.toronto,_name.colorado,_name.montreal,                _name.fcdallas,_name.nyredbulls,_name.nycity,_name.lagalaxy,_name.kansas,_name.realSaltLake,_name.dcunited,_name.portland,_name.philadelphia,_name.nerevolution,_name.orlando,_name.vancouver,_name.sanJoseEarthquakes,_name.columbuscrew,_name.houston,_name.chicago],
    2015.0: [_name.portland,_name.columbuscrew,_name.fcdallas,_name.nyredbulls,        _name.vancouver,_name.columbuscrew,_name.seattle,_name.montreal,_name.dcunited,_name.lagalaxy,_name.kansas,_name.nerevolution,_name.toronto,_name.sanJoseEarthquakes,_name.orlando,_name.houston,_name.realSaltLake,_name.nycity,_name.philadelphia,_name.colorado,_name.chicago],
    2014.0: [_name.lagalaxy,_name.nerevolution,_name.seattle,_name.nyredbulls,         _name.dcunited,_name.realSaltLake,_name.fcdallas,_name.columbuscrew,_name.vancouver,_name.kansas,_name.portland,_name.philadelphia,_name.toronto,_name.houston,_name.chicago,_name.chivasUSA,_name.colorado,_name.sanJoseEarthquakes,_name.montreal],
    2013.0: [_name.kansas,_name.realSaltLake,_name.houston,_name.portland,             _name.nyredbulls,_name.lagalaxy,_name.seattle,_name.nerevolution,_name.colorado,_name.sanJoseEarthquakes,_name.montreal,_name.chicago,_name.vancouver,_name.philadelphia,_name.fcdallas,_name.columbuscrew,_name.toronto,_name.chivasUSA,_name.dcunited],
    2012.0: [_name.lagalaxy,_name.houston,_name.seattle,_name.dcunited,                _name.sanJoseEarthquakes,_name.kansas,_name.nyredbulls,_name.realSaltLake,_name.chicago,_name.columbuscrew, _name.vancouver,_name.montreal,_name.fcdallas,_name.colorado,_name.philadelphia,_name.nerevolution,_name.portland,_name.chivasUSA,_name.toronto],
    2011.0: [_name.lagalaxy,_name.houston,_name.realSaltLake,_name.kansas,             _name.seattle,_name.fcdallas,_name.colorado,_name.philadelphia,_name.columbuscrew,_name.nyredbulls,         _name.chicago,_name.portland,_name.dcunited,_name.sanJoseEarthquakes,_name.chivasUSA,_name.toronto,_name.nerevolution,_name.vancouver],
    2010.0: [_name.colorado,_name.fcdallas,_name.sanJoseEarthquakes,_name.lagalaxy,    _name.realSaltLake,_name.nyredbulls,_name.columbuscrew,_name.seattle,_name.sanJoseEarthquakes,_name.kansas,_name.chicago,      _name.toronto,_name.houston,_name.nerevolution,_name.philadelphia,_name.chivasUSA,_name.dcunited],
    2009.0: [_name.realSaltLake,_name.lagalaxy,_name.chicago,_name.houston,            _name.columbuscrew,_name.seattle,_name.chivasUSA,_name.nerevolution,_name.colorado,_name.dcunited,          _name.fcdallas,_name.toronto,_name.kansas,_name.sanJoseEarthquakes,_name.nyredbulls],
    2008.0: [_name.columbuscrew,_name.nyredbulls,_name.chicago,_name.realSaltLake,     _name.houston,_name.chivasUSA,_name.nerevolution,_name.kansas,_name.colorado,_name.dcunited,                _name.fcdallas,_name.toronto,_name.lagalaxy,_name.sanJoseEarthquakes],
    2007.0: [_name.houston,_name.nerevolution,_name.kansas,_name.chicago,              _name.dcunited,_name.chivasUSA,_name.fcdallas,_name.nyredbulls,_name.columbuscrew,_name.colorado,           _name.lagalaxy,_name.realSaltLake,_name.toronto],
    2006.0: [_name.houston,_name.nerevolution,_name.colorado,_name.dcunited,           _name.fcdallas,_name.chicago,_name.chivasUSA,_name.nyredbulls,_name.lagalaxy,_name.realSaltLake,            _name.kansas,_name.columbuscrew],
    2005.0: [_name.lagalaxy,_name.nerevolution,_name.colorado,_name.chicago,           _name.sanJoseEarthquakes,_name.dcunited,_name.fcdallas,_name.nyredbulls,_name.kansas,_name.columbuscrew,    _name.realSaltLake,_name.chivasUSA],
    2004.0: [_name.dcunited,_name.kansas,_name.nerevolution,_name.lagalaxy,            _name.columbuscrew,_name.colorado,_name.nyredbulls,_name.sanJoseEarthquakes,_name.fcdallas,_name.nerevolution,_name.chicago],
    2003.0: [_name.sanJoseEarthquakes,_name.chicago,_name.kansas,_name.nerevolution,   _name.nyredbulls,_name.colorado,_name.dcunited,_name.columbuscrew,_name.lagalaxy,_name.fcdallas],
    2002.0: [_name.lagalaxy,_name.nerevolution,_name.colorado,_name.columbuscrew,      _name.sanJoseEarthquakes,_name.fcdallas,_name.chicago,_name.kansas,_name.nyredbulls,_name.dcunited],
    2001.0: [_name.sanJoseEarthquakes,_name.lagalaxy,_name.miamiFusion,_name.chicago,  _name.columbuscrew,_name.nyredbulls,_name.kansas,_name.fcdallas,_name.nerevolution,_name.dcunited,_name.colorado,_name.tampaBayMutiny],
    2000.0: [_name.kansas,_name.chicago,_name.lagalaxy,_name.nyredbulls,               _name.tampaBayMutiny,_name.fcdallas,_name.nerevolution,_name.colorado,_name.miamiFusion,_name.columbuscrew,       _name.dcunited,_name.sanJoseEarthquakes],
    1999.0: [_name.dcunited,_name.lagalaxy,_name.columbuscrew,_name.fcdallas,          _name.chicago,_name.colorado,_name.sanJoseEarthquakes,_name.tampaBayMutiny,_name.miamiFusion,_name.nerevolution,  _name.kansas,_name.nyredbulls],
    1998.0: [_name.chicago,_name.dcunited,_name.lagalaxy,_name.columbuscrew,           _name.colorado,_name.nyredbulls,_name.fcdallas,_name.miamiFusion,_name.tampaBayMutiny,_name.sanJoseEarthquakes,   _name.kansas,_name.nerevolution],
    1997.0: [_name.dcunited,_name.colorado,_name.fcdallas,_name.columbuscrew,          _name.kansas,_name.tampaBayMutiny,_name.lagalaxy,_name.nerevolution,_name.nyredbulls,_name.sanJoseEarthquakes],
    1996.0: [_name.dcunited,_name.lagalaxy,_name.tampaBayMutiny,_name.kansas,          _name.fcdallas,_name.nyredbulls,_name.sanJoseEarthquakes,_name.columbuscrew,_name.nerevolution,_name.colorado],
  },

  leagueName.costaRica : {
    2022.0: [_name.herediano,_name.saprissa,],
    2021.0: [_name.alajuelense,],
    2020.0: [_name.herediano,_name.alajuelense,],
    2019.0: [_name.herediano,_name.saprissa,],
    2018.0: [_name.perezZeledon,_name.herediano,],
    2017.0: [_name.saprissa,_name.herediano,],
    2016.0: [_name.saprissa,_name.alajuelense,],
    2015.0: [_name.saprissa,_name.herediano,],
    2014.0: [_name.alajuelense,_name.herediano,],
    2013.0: [_name.alajuelense,_name.herediano,],
    2012.0: [_name.alajuelense,_name.herediano,],
    2011.0: [_name.alajuelense,_name.herediano,],
    2010.0: [_name.brujas,_name.puntarenas,],
    2009.0: [_name.saprissa,_name.alajuelense,],
    2008.0: [_name.saprissa,_name.herediano,],
    2007.0: [_name.saprissa,_name.alajuelense,],
    2006.0: [_name.saprissa,_name.puntarenas,],
    2005.0: [_name.alajuelense,_name.perezZeledon,],
    2004.0: [_name.saprissa,_name.herediano,],
    2003.0: [_name.alajuelense,],
    2002.0: [_name.alajuelense,],
    2001.0: [_name.alajuelense,],
    2000.0: [_name.alajuelense,],
    1999.0: [_name.saprissa,],
    1998.0: [_name.saprissa,],
    1997.0: [_name.alajuelense,],
    1996.0: [_name.alajuelense,],
    1995.0: [_name.saprissa,],
    1994.0: [_name.saprissa,],
    1993.0: [_name.herediano,_name.cartagines,],
    1992.0: [_name.alajuelense,_name.saprissa,],
    1991.0: [_name.alajuelense,_name.saprissa,],
    1990.0: [],
    1989.0: [_name.saprissa,_name.alajuelense,],
    1988.0: [_name.saprissa,_name.herediano,],
    1987.0: [_name.herediano,_name.cartagines,],
    1986.0: [_name.puntarenas,_name.alajuelense,],
    1985.0: [_name.herediano,_name.alajuelense],
    1984.0: [_name.alajuelense,_name.saprissa,],
    1983.0: [_name.alajuelense,_name.puntarenas,],
    1982.0: [_name.saprissa,_name.puntarenas],
    1981.0: [_name.herediano,_name.limonense,],
    1980.0: [_name.alajuelense,_name.herediano,],
    1979.0: [_name.herediano,_name.cartagines,],
    1978.0: [_name.herediano,_name.puntarenas,],
    1977.0: [_name.saprissa,_name.cartagines,],
    1976.0: [_name.saprissa,_name.barrioMexico],
    1975.0: [_name.saprissa,_name.cartagines],
    1974.0: [_name.saprissa,_name.herediano,],
    1973.0: [_name.saprissa,_name.cartagines,],
    1972.0: [_name.saprissa,_name.alajuelense,],
    1971.0: [_name.alajuelense,_name.saprissa,],
    1970.0: [_name.alajuelense,_name.saprissa,],
    1969.0: [_name.saprissa,_name.alajuelense,],
    1968.0: [_name.saprissa,_name.cartagines,],
    1967.0: [_name.saprissa,_name.alajuelense],
    1966.0: [_name.alajuelense,_name.saprissa,],
    1965.0: [_name.saprissa,_name.alajuelense,],
    1964.0: [_name.saprissa,_name.orion,],
    1963.0: [_name.uruguay,_name.saprissa,],
    1962.0: [_name.saprissa,_name.alajuelense,],
    1961.0: [_name.herediano,_name.saprissa,],
    1960.0: [_name.alajuelense,_name.herediano],
  },

  leagueName.honduras : {
    2022.0: [_name.olimpiaHON,_name.rcdespana,_name.vida,_name.motagua,],
    2021.0: [_name.olimpiaHON,_name.marathon,_name.motagua,_name.vida,],
    2020.0: [_name.olimpiaHON,_name.marathon,_name.motagua],
    2019.0: [_name.motagua,_name.olimpiaHON,_name.rcdespana,_name.platenseHON,],
    2018.0: [_name.rcdespana,_name.motagua,],
    2017.0: [_name.motagua,_name.platenseHON,],
    2016.0: [],
    2015.0: [_name.motagua,_name.sociedadHON,],
    2014.0: [_name.rcdespana,_name.sociedadHON,],
    2013.0: [_name.olimpiaHON,_name.victoriaHON],
    2012.0: [_name.olimpiaHON,_name.rcdespana,],
    2011.0: [_name.rcdespana,_name.olimpiaHON,],
    2010.0: [_name.marathon,_name.olimpiaHON,],
    2009.0: [_name.marathon,_name.rcdespana,],
    2008.0: [_name.marathon,_name.motagua,],
    2007.0: [_name.motagua,_name.olimpiaHON,],
    2006.0: [_name.olimpiaHON,_name.marathon,],
    2005.0: [_name.marathon,_name.olimpiaHON,],
    2004.0: [_name.rcdespana,_name.olimpiaHON,],
    2003.0: [_name.olimpiaHON,_name.platenseHON,],
    2002.0: [_name.motagua,_name.marathon,],
    2001.0: [_name.olimpiaHON,_name.platenseHON,],
    2000.0: [_name.motagua,_name.olimpiaHON,],
    1999.0: [_name.olimpiaHON,_name.rcdespana,],
    1998.0: [_name.motagua,_name.olimpiaHON,],
    1997.0: [_name.olimpiaHON,_name.platenseHON,],
    1996.0: [_name.olimpiaHON,_name.rcdespana,],
    1995.0: [_name.victoriaHON,_name.olimpiaHON,],
    1994.0: [_name.rcdespana,_name.motagua,],
    1993.0: [_name.olimpiaHON,],
    1992.0: [_name.motagua,_name.rcdespana,],
    1991.0: [_name.rcdespana,_name.motagua,],
    1990.0: [_name.olimpiaHON,_name.rcdespana,],
    1989.0: [_name.rcdespana,_name.olimpiaHON,],
    1988.0: [_name.olimpiaHON,_name.marathon,],
    1987.0: [_name.olimpiaHON,_name.rcdespana,],
    1986.0: [_name.marathon,_name.vida,],
    1985.0: [_name.olimpiaHON,_name.vida,],
    1984.0: [_name.vida,],
    1983.0: [_name.olimpiaHON,_name.motagua,],
    1982.0: [_name.vida,],
    1981.0: [_name.rcdespana,_name.marathon,],
    1980.0: [_name.marathon,],
    1979.0: [_name.motagua,_name.rcdespana,],
    1978.0: [_name.olimpiaHON,_name.rcdespana,],
    1977.0: [_name.rcdespana,_name.motagua,],
    1976.0: [_name.rcdespana,_name.olimpiaHON,],
    1975.0: [_name.rcdespana,_name.motagua,],
    1974.0: [_name.motagua,_name.marathon,],
    1973.0: [],
    1972.0: [_name.olimpiaHON,],
    1971.0: [_name.motagua,],
    1970.0: [_name.olimpiaHON,],
    1969.0: [_name.motagua,],
    1968.0: [_name.olimpiaHON,],
    1967.0: [_name.olimpiaHON,],
    1966.0: [_name.platenseHON,],
    1965.0: [],
    1964.0: [],
    1963.0: [],
    1962.0: [],
    1961.0: [],
    1960.0: [],
  },

  leagueName.elsalvador : {
    //https://en.wikipedia.org/wiki/Primera_Divisi%C3%B3n_de_F%C3%BAtbol_de_El_Salvador
    2022.0: [],
    2021.0: [],
    2020.0: [_name.alianzaELS,],
    2019.0: [_name.aguila,],
    2018.0: [_name.alianzaELS,],
    2017.0: [_name.santaTecla,],
    2016.0: [_name.dragonELS,],
    2015.0: [_name.santaTecla,],
    2014.0: [_name.isidro,],
    2013.0: [_name.firpo,],
    2012.0: [_name.aguila,],
    2011.0: [_name.alianzaELS,],
    2010.0: [_name.isidro,],
    2009.0: [_name.isidro,],
    2008.0: [_name.firpo,],
    2007.0: [_name.isidro,],
    2006.0: [_name.aguila,],
    2005.0: [_name.fas,],
    2004.0: [_name.alianzaELS,],
    2003.0: [_name.sansalvador,],
    2002.0: [_name.fas,],
    2001.0: [_name.aguila,],
    2000.0: [_name.firpo,],
    1999.0: [_name.firpo,],
    1998.0: [_name.firpo,],
    1997.0: [_name.alianzaELS,],
    1996.0: [_name.fas,],
    1995.0: [_name.fas,],
    1994.0: [_name.alianzaELS,],
    1993.0: [_name.firpo,],
    1992.0: [_name.firpo,],
    1991.0: [_name.firpo,],
    1990.0: [_name.alianzaELS,],
    1989.0: [_name.firpo,],
    1988.0: [_name.aguila,],
    1987.0: [_name.alianzaELS,],
    1986.0: [],
    1985.0: [_name.atleticomarte,],
    1984.0: [_name.fas,],
    1983.0: [_name.aguila,],
    1982.0: [_name.atleticomarte],
    1981.0: [_name.fas,],
    1980.0: [],
    1979.0: [_name.fas,],
    1978.0: [_name.fas,],
    1977.0: [_name.aguila,],
    1976.0: [_name.aguila,],
    1975.0: [],
    1974.0: [],
    1973.0: [_name.juvOlimpica,],
    1972.0: [_name.aguila,],
    1971.0: [_name.juvOlimpica,],
    1970.0: [_name.atleticomarte,],
    1969.0: [_name.atleticomarte,],
    1968.0: [_name.aguila,],
    1967.0: [_name.alianzaELS,],
    1966.0: [_name.alianzaELS,],
    1965.0: [],
    1964.0: [_name.aguila,],
    1963.0: [_name.aguila,],
    1962.0: [_name.fas,],
    1961.0: [_name.fas,],
    1960.0: [],
  },

  leagueName.jamaica : {
    2022.0: [],
    2021.0: [_name.cavalier,_name.waterhouse,],
    2020.0: [],
    2019.0: [_name.portmore,_name.waterhouse,],
    2018.0: [_name.portmore,_name.waterhouse,],
    2017.0: [_name.arnettGardens,_name.portmore,],
    2016.0: [_name.montego,_name.portmore,],
    2015.0: [_name.arnettGardens],
    2014.0: [_name.montego,_name.waterhouse,],
    2013.0: [_name.harbourView,_name.waterhouse,],
    2012.0: [_name.portmore,],
    2011.0: [_name.tivoliGardens,],
    2010.0: [_name.harbourView,_name.tivoliGardens,],
    2009.0: [_name.tivoliGardens,_name.portmore,],
    2008.0: [_name.portmore,_name.tivoliGardens,],
    2007.0: [_name.harbourView,_name.portmore,],
    2006.0: [_name.waterhouse,_name.harbourView,],
    2005.0: [_name.portmore,_name.tivoliGardens,],
    2004.0: [_name.tivoliGardens,_name.harbourView,],
    2003.0: [_name.portmore,_name.arnettGardens,],
    2002.0: [_name.arnettGardens,],
    2001.0: [_name.arnettGardens,_name.waterhouse,],
    2000.0: [_name.harbourView,_name.waterhouse,],
    1999.0: [_name.tivoliGardens,_name.harbourView,],
    1998.0: [_name.waterhouse,],
    1997.0: [_name.montego,_name.arnettGardens,],
    1996.0: [],
    1995.0: [_name.reno,],
    1994.0: [],
    1993.0: [_name.portmore,_name.arnettGardens,],
    1992.0: [_name.wadadah,_name.reno,],
    1991.0: [_name.reno,_name.arnettGardens,],
    1990.0: [_name.reno,],
  },

};