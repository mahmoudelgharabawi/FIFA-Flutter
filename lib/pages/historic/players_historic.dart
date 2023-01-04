import 'package:fifa/classes/geral/size.dart';
import 'package:fifa/classes/historic/top_players_ovr.dart';
import 'package:fifa/classes/historic/top_scorers.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/theme/translation.dart';
import 'package:fifa/widgets/back_button.dart';
import 'package:flutter/material.dart';

class PlayersHistoric extends StatefulWidget {
  //NECESSARY VARIABLES WHEN CALLING THIS CLASS
  const PlayersHistoric({Key? key}) : super(key: key);
  @override
  _PlayersHistoricState createState() => _PlayersHistoricState();
}

class _PlayersHistoricState extends State<PlayersHistoric> {

////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Container(
          decoration: Images().getWallpaperContainerDecoration(),
          width: Sized(context).width,
          child: Column(
            children: [
              backButtonText(context, Translation(context).text.playersHistoric),

              const SizedBox(height: 8),


              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for(int year=anoInicial;year<ano;year++)
                        yearRowTopScorers(year),
                    ],
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
Widget myPlayersHistoricRow(int index){
    int ano = index + anoInicial;
    int position = -1;
    String clubName = '';
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(ano.toString()+': '+position.toString()+'º - '+clubName,style: EstiloTextoBranco.text14),
      Images().getEscudoWidget(clubName,15,15),
    ],
  );
}

///////////////////////////
  Widget yearRowTopScorers(int year){
    Map topScorersMap = TopScorers().getDataYear(year);
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Column(
        children: [
          Text('${Translation(context).text.topScorers} $year ${Translation(context).text.and} ${Translation(context).text.bestPlayers}',style: EstiloTextoBranco.text14),
          Row(
            children: [
              Column(
                children: [
                  for(int position=0;position<25 && position< topScorersMap.values.length;position++)
                    yearRowTopScorersRow(year,position)
                ],
              ),
              Column(
                children: [
                  for(int position=0;position<25 && position< topScorersMap.values.length;position++)
                    yearRowBestPlayersRow(year,position)
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
  Widget yearRowTopScorersRow(int year, int position){
    TopScorers topScorers = TopScorers();
    topScorers.getInPosition(year, position);
    return             Row(
      children: [
        //Artilheiros
        Text('${(position+1).toString()}-',style: EstiloTextoBranco.text14),
        Images().getEscudoWidget(topScorers.clubName,20,20),
        SizedBox(
          width:130,
          child: Text(topScorers.playerName,style: EstiloTextoBranco.text14),
        ),
        Text(topScorers.playerGoals.toString(),style: EstiloTextoBranco.text14),
        const SizedBox(width: 15),

      ],
    );
  }
}
Widget yearRowBestPlayersRow(int year, int position){
  TopPlayersOVR topPlayersOVR = TopPlayersOVR();
  topPlayersOVR.getInPosition(year, position);
  return Row(
    children: [

      //MELHORES JOGADORES DO MUNDO
      Text('${(position+1).toString()}-',style: EstiloTextoBranco.text14),
      Images().getEscudoWidget(topPlayersOVR.clubName,20,20),
      SizedBox(
        width:130,
        child: Text(topPlayersOVR.playerName,style: EstiloTextoBranco.text14),
      ),
      Text(topPlayersOVR.playerOVR.toString(),style: EstiloTextoBranco.text14),
    ],
  );
}