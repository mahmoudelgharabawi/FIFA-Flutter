import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/jogador.dart';
import 'package:fifa/classes/team_details.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/theme/background_color/background_overall.dart';
import 'package:fifa/theme/background_color/background_position.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/values/clubs_all_names_list.dart';
import 'package:fifa/widgets/button/back_button.dart';
import 'package:fifa/widgets/popup/popup_player_info.dart';
import 'package:fifa/widgets/stars.dart';
import 'package:flutter/material.dart';

class CountryProfile extends StatefulWidget {
  final String nationalTeam;
  const CountryProfile({Key? key,required this.nationalTeam}) : super(key: key);

  @override
  State<CountryProfile> createState() => _CountryProfileState();
}

class _CountryProfileState extends State<CountryProfile> with TickerProviderStateMixin {

  late TabController _tabController;
  late NationalTeam nationalTeam;
  List<Jogador> playersID = [];
  double avg = 0;
  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    nationalTeam = NationalTeam(name: widget.nationalTeam);

    init();
    super.initState();
  }
  void init() async{
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 1), () {});
    playersID = sortingPlayersOverall();

    int sum = 0;
    for (int i=0; i<playersID.length  && i<11; i++) {
      sum += playersID[i].overall;
    }
    avg = sum/11;

    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Stack(
          children: [

            Images().getWallpaper(),


            Column(
              children: [

                Container(
                    color: nationalTeam.clubColors.primaryColor.withOpacity(0.7),
                    child: backButtonText(context, widget.nationalTeam)
                ),

                Container(
                  color: nationalTeam.clubColors.primaryColor.withOpacity(0.3),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Images().getNationalCrest(widget.nationalTeam, 80, 80),
                      Column(
                        children: [
                          starsWidgetFromOverall(nationalTeam.overall),
                          Text(avg.toStringAsFixed(2), style: EstiloTextoBranco.negrito16),
                          Text("FIFA Ranking: " + nationalTeam.fifaranking.toString() + 'º', style:EstiloTextoBranco.text16),
                          Text(nationalTeam.stadium, style:EstiloTextoBranco.text16),
                          Text(" (" + nationalTeam.getStadiumstadiumSizePointFormat() + ")", style:EstiloTextoBranco.text16),
                        ],
                      ),
                      Images().getUniformWidget(widget.nationalTeam, 80, 80),
                    ],
                  ),
                ),


                Container(
                  height: 30,
                  color: nationalTeam.clubColors.primaryColor.withOpacity(0.3),
                  child: TabBar(
                    controller: _tabController,
                    unselectedLabelColor: Colors.white54,
                    labelColor: nationalTeam.clubColors.secondColor,
                    indicatorColor: nationalTeam.clubColors.secondColor,
                    tabs: const [
                      Tab(text: "Gráfico"),
                      Tab(text: "Histórico"),
                      Tab(text: "Jogadores Históricos"),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      listPlayers(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }

////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
Widget header(){
    return Row(
      children: [
        Container(),
      ],
    );
}
  Widget titles(){
    return Container();
  }
  List<Jogador> sortingPlayersOverall(){
    List<Jogador> playersID = [];
    for (int id=0; id<globalJogadoresIndex.length; id++){
      Jogador player = Jogador(index: id);
      if(widget.nationalTeam == player.nationality){
        if(!clubsLegends.contains(player.clubName)){
          playersID.add(player);
        }
      }
    }
    for (int i=1; i<playersID.length; i++) {
      for (int k = 0; k < playersID.length - 1; k++) {
        if (playersID[i].overall > playersID[k].overall) {
          Jogador aux = playersID[i];
          playersID[i] = playersID[k];
          playersID[k] = aux;
        }
      }
    }
    return playersID;
  }
  Widget listPlayers(){

    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i=0; i<playersID.length && i < 200; i++)
            rowPlayer(playersID[i]),
        ],
      ),
    );
  }
  Widget rowPlayer(Jogador player){
    return InkWell(
      onTap: (){
        popUpOkShowPlayerInfos(context: context, playerID: player.index, funcSetState: (){});
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
            children: [
              const SizedBox(width: 8),
              SizedBox(
                width: 70,
                child: Row(
                  children: [
                    ovrContainer(player.overall),
                    const SizedBox(width: 8),
                    positionContainer(player.position),
                  ],
                ),
              ),
              Images().getClubCrest(player.clubName, 25, 25),
              const SizedBox(width: 8),
              Text(player.name, style: EstiloTextoBranco.text16),
            ],
          ),
      ),
    );
  }
}
