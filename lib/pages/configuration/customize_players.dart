import 'dart:async';

import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/functions/esquemas_taticos.dart';
import 'package:fifa/classes/functions/size.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/player_basic.dart';
import 'package:fifa/classes/countries/flags_list.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/pages/configuration/customize_club.dart';
import 'package:fifa/widgets/popup/popup_create_player.dart';
import 'package:fifa/widgets/popup/popup_edit_nationality.dart';
import 'package:fifa/widgets/popup/popup_ok_cancel.dart';
import 'package:fifa/widgets/popup/popup_save_all_data.dart';
import 'package:fifa/widgets/popup/popup_transfer_player_club.dart';
import 'package:fifa/widgets/popup/poup_edit.dart';
import 'package:fifa/theme/background_color/background_age.dart';
import 'package:fifa/theme/background_color/background_overall.dart';
import 'package:fifa/theme/background_color/background_position.dart';
import 'package:fifa/theme/colors.dart';
import 'package:fifa/theme/custom_toast.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/theme/translation.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:fifa/widgets/button/button_design.dart';
import 'package:fifa/widgets/number_player_position.dart';
import 'package:flutter/material.dart';

import '../../classes/jogador.dart';

class CustomizePlayers extends StatefulWidget {
  //NECESSARY VARIABLES WHEN CALLING THIS CLASS
  final int clubID;
  const CustomizePlayers({Key? key, required this.clubID}) : super(key: key);
  @override
  _CustomizePlayersState createState() => _CustomizePlayersState();
}

class _CustomizePlayersState extends State<CustomizePlayers> {

  TextEditingController textEditingController = TextEditingController();

  List listAll = [];
  List listShow = [];
  late int chosenPlayerID;
  late Club club;

////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    club = Club(index: widget.clubID);
    double escudoSize = 60;
    Color colorAppBar = club.colors.primaryColor.withOpacity(0.3);

    return Scaffold(
        resizeToAvoidBottomInset : false, //Evita um overlay quando o layout é maior que a tela
        body:  Stack(
            children: [
              Images().getWallpaper(),
              Container(
                  color: colorAppBar,
                  child: backButtonText(context,Translation(context).text.customizePlayers)
              ),

              Column(
                children: [

                  const SizedBox(height: 78),

                  //LOGO DO CLUBE
                  Container(
                    color: colorAppBar,
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap:(){
                            },
                            child: Images().getEscudoWidget(club.name,escudoSize,escudoSize),
                        ),
                        const SizedBox(width: 8),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(
                                width: Sized(context).width - escudoSize - 10,
                                child: Row(
                                  children: [

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(club.name,style: EstiloTextoBranco.negrito22),
                                        //N Jogadores
                                        Text('Players: ${club.jogadores.length.toString()}',style: EstiloTextoBranco.text16),
                                      ],
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),

                  //CUSTOMIZE
                  Container(
                    color: colorAppBar,
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        buttonDesign(
                            title: Translation(context).text.save,
                            function: (){
                              //Salva os dados
                              popUpSaveAllData(context: context);
                              //Navigator.pop(context);
                            }),

                        buttonDesign(
                            title: Translation(context).text.createPlayer,
                            function: (){
                              setState(() {});
                              popUpCreatePlayer(
                                  context: context,
                                  club: club,
                                  function: (){
                                    setState(() {});
                                  }
                              );
                            }
                        ),

                        buttonDesign(
                            title: 'Edit Club',
                            function: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CustomizeClub(clubName: club.name)));
                            }),

                        buttonDesign(
                            title: EsquemaTatico().e442,
                            function: (){

                            }),

                      ],
                    ),
                  ),

                  //Jogadores por posição
                  Container(
                      color: colorAppBar,
                      padding: const EdgeInsets.only(top: 8),
                      child: playersPerPosition(club),
                  ),

                  //SHOW TABLE PLAYERS TITLE
                  Container(
                    padding: const EdgeInsets.only(top: 8),
                    color: AppColors().greyTransparent,
                    child: Row(
                      children: [
                        const SizedBox(width: 8),
                        Text(Translation(context).text.pos3,style: EstiloTextoBranco.negrito16),
                        const SizedBox(width: 80),
                        SizedBox(width:174,
                            child: Text(Translation(context).text.name.toUpperCase(),style: EstiloTextoBranco.negrito16)
                        ),
                        Text(Translation(context).text.age3,style: EstiloTextoBranco.negrito14),
                        const SizedBox(width: 2),
                        Text(Translation(context).text.ovr3,style: EstiloTextoBranco.negrito14),
                        const SizedBox(width: 4),
                        const Text("DEL",style: EstiloTextoBranco.negrito14),
                      ],
                    ),
                  ),

                  //SHOW TABLE PLAYERS CONTENT
                  Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        color: AppColors().greyTransparent,
                        child: SingleChildScrollView(
                          child: Table(
                            columnWidths: const {
                              0: FractionColumnWidth(.09),
                              1: FractionColumnWidth(.1),
                              2: FractionColumnWidth(.08),
                              3: FractionColumnWidth(.48),
                              6: FractionColumnWidth(.1),
                              7: FractionColumnWidth(.001),//container to create vertical spacing
                            },
                            children: [
                              for(int i=0;i<club.nJogadores;i++)
                                playersRow(i),
                            ],
                          ),
                        ),
                      ),
                  ),

                ],
              )

            ]
        )
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////

TableRow playersRow(int i){

      int playerID = club.jogadores[i];
      Jogador player = Jogador(index: playerID);

    return TableRow(
      children: [

        //POSIÇÃO
        InkWell(
            onTap:(){
              chosenPlayerID = playerID;
              popupText(Translation(context).text.changePosition,player.position,'Position');
            },
            child: positionContainer(player.position),
        ),

        //CLUB
        InkWell(
            onTap:(){
              PopupConfig popupConfig = PopupConfig();
              popupConfig.chosenPlayerID = playerID;
              popUpChangePlayerClub(originalContext: context, popupConfig: popupConfig );

              Timer.periodic(const Duration(milliseconds: 100), (timer) {
                if (popupConfig.popupClosed) {
                  setState((){});
                  timer.cancel();
                }
              });

            },
            child: Images().getEscudoWidget(player.clubName,30,30)),

        //NATIONALITY
        InkWell(
            onTap:(){
              chosenPlayerID = playerID;
              popUpEditNationality(
                  context: context,
                  player: player,
                  function: (){
                    setState(() {});
              });
            },
            child: funcFlagsList(player.nationality, 20, 30),
        ),

        //NOME
        Container(
          margin: const EdgeInsets.only(left: 8.0),
          child: InkWell(
            onTap:(){
              chosenPlayerID = playerID;
              popupText(Translation(context).text.changePlayersName,player.name,'Name');
            },
            child: SizedBox(
                width: 200,
                child: Text(player.name,style: EstiloTextoBranco.text14)
            ),
          ),
        ),

        //IDADE
        Container(
          width: 22,
          color: colorAgeBackground(player.age),
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: InkWell(
              onTap:(){
                chosenPlayerID = playerID;
                popupNumber(player.age,'Idade');

              },
              child: Center(child: Text(player.age.toStringAsFixed(0),style: EstiloTextoPreto.text16))),
        ),

        //OVERALL
        Container(
          width: 22,
          color: colorOverallBackground(player.overall),
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child: InkWell(
              onTap:(){
                chosenPlayerID = playerID;
                popupNumber(globalJogadoresOverall[playerID],'Overall');
              },
              child: Center(child: Text(player.overall.toStringAsFixed(0),style: EstiloTextoPreto.text16))),
        ),

        //DELETE
        InkWell(
          onTap:(){
            popUpOkCancel(
                context: context,
                title: Translation(context).text.deletePlayer+'?',
                content: '',
                function: (){
                  PlayerBasicInfo playerBasic = PlayerBasicInfo();
                  playerBasic.deletePlayerFromDatabase(player.index);
                  setState(() {});
                }
            );
          },
          child: const Center(child: Icon(Icons.delete_outline,color: Colors.white),),
        ),

        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
        ),
      ],
    );

  }


popupText(String title,String variableString, String whichData){

  popupEdit(
      context: context,
      title: title,
      variable: variableString,
      isStringType: true,
      maxNcharacters: 22,
      functionOK: (value){
         if(whichData=='Position' && positions[EsquemaTatico().e442].containsKey(value)) {
            globalJogadoresPosition[chosenPlayerID] = value;
         }else if(whichData=='Position' && !positions[EsquemaTatico().e442].containsKey(value)){
            customToast(Translation(context).text.invalidPosition);
          }

        if(whichData=='Name') globalJogadoresName[chosenPlayerID] = value;

            setState(() {});

      }
  );
}
popupNumber(dynamic number, String whichData){
    popupEdit(
        context: context,
        title: Translation(context).text.newValueTo+' '+whichData,
        variable: number,
        isStringType: true,
        maxNcharacters: 22,
        functionOK: (valueStr){
          int value = int.parse(valueStr);
          if(whichData=='Idade' && value<45 && value>=16) globalJogadoresAge[chosenPlayerID] = value;
          if(whichData=='Overall' && value<100 && value>40) globalJogadoresOverall[chosenPlayerID] = value;
          setState(() {});
        }
    );
  }




}