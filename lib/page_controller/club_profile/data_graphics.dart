import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/historic.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/values/historic_champions.dart';
import 'package:fifa/values/league_divisions.dart';

class ClassificationData {
  ClassificationData(this.year, this.position);

  final int year;
  final int position;
}

class DataGraphics{

  int nTitulos = 0;
  int n2ndivision = 0;
  int g4Years = 0;
  int averagePosition = 0;
  List<ClassificationData> data=[];

  getData(Club club){
    //novas temporadas
    defineSimulationClassification(club);
    //historico de campeoes
    defineHistoricClassification(club);

    averagePositionCount(data.take(10).toList());
  }

  defineSimulationClassification(Club club){
    for(int year=anoInicial; year<ano; year++){
      try {
        int position = HistoricFunctions().funcHistoricListFromClubID(year, club.leagueName, club.index);
        data.add(ClassificationData(year, position));
        addTitlesCount(position);
        addG4Count(position);
        add2ndDivisionCount(position);
      }catch(e){
        data.add(ClassificationData(year, 21));
        add2ndDivisionCount(21);
      }
    }
  }
  defineHistoricClassification(Club club){
    Map results = mapChampions(Divisions().league1stDivisionName(club.leagueName));
    //SE NÃO TEM DADOS
    ifHistoricDataDontExist(results);

    for(int year in results.keys){
      if(results[year].contains(club.name)){
        int position = results[year].indexOf(club.name)+1;
        data.add(ClassificationData(year, position));
        addTitlesCount(position);
        addG4Count(position);
        add2ndDivisionCount(position);
      }else{
        data.add(ClassificationData(year, 21));
        add2ndDivisionCount(21);
      }
    }
  }

  ifHistoricDataDontExist(Map results){
    //CRIA UM ARRAY COM VALORES NEUTROS PARA MOSTRAR ALGUM GRAFICO
    if(results.isEmpty){
      for(int year=1; year<10; year++) {
        data.add(ClassificationData(anoInicial - year, 21));
      }
    }
  }

  addTitlesCount(int position){
    if(position == 1){
      nTitulos ++;
    }
  }
  add2ndDivisionCount(int position){
    if(position >= 21){
      n2ndivision ++;
    }
  }
  addG4Count(int position){
    if(position <= 4){
      g4Years ++;
    }
  }

  averagePositionCount(List<ClassificationData> dataLast10Years){
    averagePosition=0;
    for(ClassificationData data in dataLast10Years){
      averagePosition += data.position;
    }
    averagePosition = (averagePosition/10).round();
  }
}