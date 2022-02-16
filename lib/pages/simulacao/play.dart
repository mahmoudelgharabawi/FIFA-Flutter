import 'dart:async';
import 'dart:math';
import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/jogador.dart';
import 'package:fifa/classes/league.dart';
import 'package:fifa/global/global_variables.dart';
import 'package:fifa/global/globalfunctions.dart';
import 'package:fifa/pages/simulacao/fim_campeonato.dart';
import 'package:fifa/global/simulate_functions.dart';
import 'package:fifa/pages/simulacao/substitution.dart';
import 'package:fifa/theme/button_style.dart';
import 'package:fifa/theme/custom_toast.dart';
import 'package:fifa/theme/textstyle.dart';

import 'package:flutter/material.dart';
import '../../classes/my.dart';
import '../../global/images.dart';
import '../../c_menu.dart';
import '../../theme/field.dart';

class Play extends StatefulWidget {
  //NECESSARY VARIABLES WHEN CALLING THIS CLASS
  final int adversarioClubID;
  final bool visitante;
  final int chavePosAdv;
  const Play({Key? key,required this.adversarioClubID, required this.visitante,required this.chavePosAdv}) : super(key: key);
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  late Timer _timer;
  //late double _height, _width;
  int milis = 0;
  bool finishedMatch = false;
  double maxSliderDistance = 200;
  bool ultimaRodadaLeague = false;

  int pontosA=0,pontosB=0;
  String posturaDoTime = 'Normal';
  int probGM=0,probGS=0;
  int meuGolMarcado=0, meuGolSofrido=0;

  //
  bool visitante = false;
  My myClass = My();
  Club myClubClass = Club(index: My().clubID);
  late String clubName1;
  late Club adversarioClubClass;
  late String clubName2;
  late List adversarioEscalacao;

  @override
  void dispose() {
    //Cancelar o timer do envio de email
    try {
      _timer.cancel();
    }catch(e){
      print(e);
    }
    super.dispose();
  }
////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    doThisOnLaunch();
    visitanteFunc();
    super.initState();
  }
  doThisOnLaunch() {
    adversarioClubClass = Club(index: widget.adversarioClubID);
    adversarioEscalacao = adversarioClubClass.optimizeBestSquadClub();

    //Reseta os indicadores da partida
    globalMatchGoalScorerIDMy=[];
    globalMatchGoalScorerIDAdv=[];
    globalMatchGoalsMinutesMy = [];
    globalMatchGoalsMinutesAdv = [];
    globalJogadoresMatchGoals = List.filled(10000, 0);
    globalJogadoresMatchAssists = List.filled(10000, 0);
    globalJogadoresMatchRedCards = List.filled(10000, 0);
    globalJogadoresMatchYellowCards = List.filled(10000, 0);
    globalJogadoresMatchInjury = List.filled(10000, 0);
    globalJogadoresMatchHealth = List.filled(10000, 1.0);

    //Inicia a contagem
    counter();
  }
  visitanteFunc(){
    visitante = widget.visitante;
    clubName1 = visitante ? Club(index: widget.adversarioClubID).name : myClass.clubName;
    clubName2 = visitante ? myClass.clubName : Club(index: widget.adversarioClubID).name;

  }
////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    //_height = MediaQuery.of(context).size.height;


    String textRodada = '';
    if(GlobalFunctions().isJogoCampeonatoNacional()) {
      textRodada = 'Rodada ' + rodada.toString() + '/' + (League(index: myClass.campeonatoID).getNTeams()-1).toString();
    }else{
      textRodada = 'Fase de Grupos';
      if(semana == semanaOitavas){textRodada = 'Oitavas';}
      if(semana == semanaQuartas){textRodada = 'Quartas';}
      if(semana == semanaSemi){textRodada = 'Semi';}
      if(semana == semanaFinal){textRodada = 'Final';}
    }

    return WillPopScope(//IF GO BACK TO PREVIOUS PAGE
      onWillPop: () async{
        return false;
      },
      child: Scaffold(

          resizeToAvoidBottomInset : false, //Evita um overlay quando o layout é maior que a tela
          body:  Stack(
              children: [

                GlobalFunctions().isJogoCampeonatoNacional()
                ? Image.asset('assets/icons/wallpaper.png',height: double.infinity,width: double.infinity,fit: BoxFit.fill,)
                  : GlobalFunctions().qualCopaInternacional(myClass.campeonatoID) == 'Champions'
                      ? Image.asset('assets/icons/fundochampions.png',height: double.infinity,width: double.infinity,fit: BoxFit.fill)
                      : Image.asset('assets/icons/fundolibertadores.png',height: double.infinity,width: double.infinity,fit: BoxFit.fill,),


                Column(
                  children: [

                    const SizedBox(height: 40),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Escudo time 1
                        Image.asset('assets/clubs/${FIFAImages().imageLogo(clubName1)}.png',height: 80,width: 80),

                        Column(
                          children: [
                            Image.asset('assets/icons/${FIFAImages().campeonatoLogo(myClass.campeonatoID)}.png',height: 30,width: 30),
                            Text(textRodada,style: EstiloTextoBranco.text16),
                            Text(milis.toString()+'\'',style: EstiloTextoBranco.text16),
                            visitante
                                ? Text(meuGolSofrido.toString() +'X'+ meuGolMarcado.toString(),style: EstiloTextoBranco.text30)
                                : Text(meuGolMarcado.toString() +'X'+ meuGolSofrido.toString(),style: EstiloTextoBranco.text30),
                          ],
                        ),

                        //Escudo time 2
                        Image.asset('assets/clubs/${FIFAImages().imageLogo(clubName2)}.png',height: 80,width: 80),

                      ],
                    ),

                    //GOLS MARCADOS
                    SizedBox(
                      height: 90,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start, //Começando a lista do topo
                        children: [
                          const SizedBox(width: 14),
                          goalWidget(true),

                          const SizedBox(width: 70),
                          goalWidget(false),

                        ],
                      ),
                    ),

                    //Campo de jogo
                    Expanded(
                      child: Stack(
                        children: [

                          //Estádio
                          Image.asset('assets/clubs/${FIFAImages().imageLogo(clubName1)}0.jpg',height: 420,width: double.infinity,fit:BoxFit.fill),

                          //Jogadores
                          Row(
                            children: [
                              SizedBox(
                                width: 190,
                                  child: fieldGameplay442(visitante ? widget.adversarioClubID : myClass.clubID)
                              ),
                              SizedBox(
                                  width: 190,
                                  child: fieldGameplay442(visitante ? myClass.clubID : widget.adversarioClubID)
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),


                    const Text('Velocidade do Jogo',style: EstiloTextoBranco.text14),
                    Slider(
                      activeColor: Colors.green,
                      value: matchVelocity,
                      min: 10,max: maxSliderDistance,
                      onChanged: (double value) {
                        setState(() {
                          matchVelocity = value;
                          _timer.cancel();
                          counter();
                        });
                      },
                    ),

                    customButtonContinue(
                        title: milis>=90 ? 'Próxima Rodada' : 'Substituição',
                        function: (){
                          if(milis>=90){
                            _timer.cancel();
                            //SE FOR A ULTIMA RODADA DO CAMPEONATO MOSTRA A TABELA DE CLASSIFICAÇÃO FINAL
                            if(ultimaRodadaLeague){
                              Navigator.push(context,MaterialPageRoute(builder: (context) => const FimCampeonato()));
                            }else{
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const Menu()));
                            }
                          }else{
                            _timer.cancel();
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Substitution()))
                                .then((value) => counter());
                          }
                        }
                    ),


                  ],
                )

              ]
          )
      ),
    );
  }
////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
  Widget goalWidget(bool isTeam1){
    int lengthWidget = meuGolSofrido;
    bool isMy =false;
    if((isTeam1 && !visitante) || (!isTeam1 && visitante)) {//
      lengthWidget = meuGolMarcado;
      isMy = true;
    }
    return   lengthWidget > 0
        ? SingleChildScrollView(
        child: Column(
          children: [
          for(int i=0; i<lengthWidget; i++)
            goalWidgetRow(i, isMy)
          ],
        ),
    )
    : const SizedBox(width: 145);
  }
  Widget goalWidgetRow(int i,bool isMy){
    late int minuto;
    late int playerIndex;
    if(isMy){
      minuto = globalMatchGoalsMinutesMy[i];
      playerIndex = globalMatchGoalScorerIDMy[i];
    }else {
      minuto = globalMatchGoalsMinutesAdv[i];
      playerIndex = globalMatchGoalScorerIDAdv[i];
    }
      String playerName = Jogador(index: playerIndex).name;
      return

        Row(
        children: [
          Image.asset('assets/icons/bola.png',height:15,width: 15),
          SizedBox(width:110,
              child: Text(playerName,overflow: TextOverflow.ellipsis,style: EstiloTextoBranco.text14)
          ),
          Text(minuto.toString()+'\'',style: EstiloTextoBranco.text14)
        ],
      );

  }


  ////////////////////////////////////////////////////////////////////////////
//                               FUNCTIONS                                  //
////////////////////////////////////////////////////////////////////////////
counter (){
  _timer = Timer.periodic(Duration(milliseconds: 200 - matchVelocity.toInt()), (timer) async {

    milis+=1;
    if(milis>90){
      _timer.cancel();
      if(!finishedMatch){
        customToast('Simulando as outras partidas');
        endMatch(); //set vitoria, empate ou derrota

        premiacao(); //dinheiro

        //salva resultado no histórico
        setHistoricGoalsLeagueMy();

        //update poe +1 match pros meus jogadores
        Simulate().setMatchPlus1(myClubClass);
        Simulate().setMatchPlus1(adversarioClubClass);


        Simulate().nationalMatchs(myClass.campeonatoID);//GOLS, AMARELOS, ASSISTS, INJURY ETC...

        //VERIFICA SE É A ULTIMA RODADA
        int nRodadas = League(index: myClass.campeonatoID).getNTeams()-1;
        ultimaRodadaLeague = (rodada==nRodadas && semanasJogosNacionais[nRodadas-1] == semana);

        //ATUALIZA RODADA
        semana++;
        if(semanasJogosNacionais.contains(semana)) {
          if(semana < League(index: myClass.campeonatoID).nClubs) {
            rodada = semanasJogosNacionais.indexOf(semana)+1;
          }
        }

        finishedMatch = true;

        customToast('FIM DA RODADA');
      }
    }else{
      updateHealth();
      golPorMinuto(myClubClass.getOverall(), adversarioClubClass.getOverall());
      Simulate().setRedCardsYellowCardsInjury(myClubClass, true);
      Simulate().setRedCardsYellowCardsInjury(adversarioClubClass, true);
      setState(() {});
    }
  });
}

golPorMinuto(double overallMy, double overallAdversario){

    //Define a probabilidade de marcar gol GM e de sofrer gol GS
    funcPosturaTime(overallMy, overallAdversario);

    int gol = Random().nextInt(800);

    //EU FAÇO O GOL
    if(gol<=probGM) {

      funcMeuGol(gol);

     //GOL DO ADVERSARIO
    }else{
      //Os dois times não podem fazer gol no mesmo minuto
      //Ex: GM: 20 GS:15 e nº= 8
      gol = Random().nextInt(900);
        funcGolAdversario(gol);
    }

  }

  void funcMeuGol(int gol){
    globalMatchGoalsMinutesMy.add(milis);
    meuGolMarcado++;
    setState(() {});
    //quem fez GOL
    funcQuemfezgol(1);
    //quem fez ASSISTENCIA
    funcQuemfezAssistencia(1);
  }
  void funcGolAdversario(int gol){
    //TOMO O GOL
    if (gol <= probGS) {
      globalMatchGoalsMinutesAdv.add(milis);
      meuGolSofrido++;
      setState(() {});
      //GOL ADVERSARIO
      //QUEM FEZ O GOL DO ADVERSARIO ACESSA A FUNÇÃO quemfezgol, retorna um int
      funcQuemfezgol(2);
      //quem fez ASSISTENCIA
      funcQuemfezAssistencia(2);
    }
  }

  funcQuemfezgol(int clubMyorAdv){

    int quemfez = Simulate().funcQuemfezgol();

    //Procura o nome do jogador na lista de todos os jogadores e adiciona um gol pra ele
    late int jogadorID;
    if(clubMyorAdv==1){
      jogadorID=myClass.jogadores[quemfez];
      globalMatchGoalScorerIDMy.add(jogadorID);
    }
    if(clubMyorAdv==2){
      jogadorID=adversarioEscalacao[quemfez];
      globalMatchGoalScorerIDAdv.add(jogadorID);
    }
    if(GlobalFunctions().isJogoCampeonatoNacional()){
      globalJogadoresLeagueGoals[jogadorID]++;
    }else{
      globalJogadoresInternationalGoals[jogadorID]++;
    }
    globalJogadoresMatchGoals[jogadorID]++;
  }

  funcQuemfezAssistencia(int clubMyorAdv){

    int quemfez = Simulate().funcQuemfezAssistencia();
    if(quemfez >= 0) { //nem todos gols tem assitencia, 75% tem

    //Procura o nome do jogador na lista de todos os jogadores e adiciona uma assistencia pra ele
      late int jogadorID;
      if(clubMyorAdv==1){jogadorID=myClass.jogadores[quemfez];}
      if(clubMyorAdv==2){jogadorID=adversarioEscalacao[quemfez];}
      if(GlobalFunctions().isJogoCampeonatoNacional()){
        globalJogadoresLeagueAssists[jogadorID]++;
      }else{
       globalJogadoresInternationalAssists[jogadorID]++;
      }
        globalJogadoresMatchAssists[jogadorID]++;

    }
  }


  void funcPosturaTime(double overallEquipeA, double overallEquipeB){
    //TIME NA DEFESA
    if(posturaDoTime=='Defesa'){
      if(overallEquipeA-overallEquipeB>10)                                    {probGM=20;probGS=3;}
      if(overallEquipeA-overallEquipeB>6)                                    {probGM=16;probGS=5;} //marca 4 e toma 0,3 gols por jogo
      if(overallEquipeA-overallEquipeB<=6 && overallEquipeA-overallEquipeB>4){probGM=15;probGS=6;}
      if(overallEquipeA-overallEquipeB<=4 && overallEquipeA-overallEquipeB>2){probGM=14;probGS=7;}
      if(overallEquipeA-overallEquipeB<=2 && overallEquipeA-overallEquipeB>1){probGM=13;probGS=10;}
      if(overallEquipeA-overallEquipeB<=1 && overallEquipeA-overallEquipeB>-1){probGM=12;probGS=12;}
      if(overallEquipeA-overallEquipeB<=-1 && overallEquipeA-overallEquipeB>-2){probGM=10;probGS=13;}
      if(overallEquipeA-overallEquipeB<=-2 && overallEquipeA-overallEquipeB>-4){probGM=7;probGS=14;}
      if(overallEquipeA-overallEquipeB<=-4 && overallEquipeA-overallEquipeB>-6){probGM=6;probGS=15;}
      if(overallEquipeA-overallEquipeB<=-6)                                     {probGM=5;probGS=16;}}
    //TIME NORMAL
    if(posturaDoTime=='Normal'){
      if(overallEquipeA-overallEquipeB>=10)                                    {probGM=30;probGS=5;}
      if(overallEquipeA-overallEquipeB>=6)                                    {probGM=25;probGS=7;} //marca 4 e toma 0,3 gols por jogo
      if(overallEquipeA-overallEquipeB<6 && overallEquipeA-overallEquipeB>=4){probGM=22;probGS=10;}
      if(overallEquipeA-overallEquipeB<4 && overallEquipeA-overallEquipeB>=2){probGM=20;probGS=12;}
      if(overallEquipeA-overallEquipeB<=2 && overallEquipeA-overallEquipeB>1){probGM=18;probGS=14;}
      if(overallEquipeA-overallEquipeB<=1 && overallEquipeA-overallEquipeB>-1){probGM=16;probGS=16;}
      if(overallEquipeA-overallEquipeB<=-1 && overallEquipeA-overallEquipeB>-2){probGM=14;probGS=18;}
      if(overallEquipeA-overallEquipeB<=-2 && overallEquipeA-overallEquipeB>-4){probGM=12;probGS=20;}
      if(overallEquipeA-overallEquipeB<=-4 && overallEquipeA-overallEquipeB>-6){probGM=10;probGS=22;}
      if(overallEquipeA-overallEquipeB<=-6)                                     {probGM=7;probGS=25;}}
    //TIME NO ATAQUE
    if(posturaDoTime=='Ataque'){
      if(overallEquipeA-overallEquipeB>=10)                                    {probGM=35;probGS=8;}
      if(overallEquipeA-overallEquipeB>=6)                                    {probGM=30;probGS=10;} //marca 4 e toma 0,3 gols por jogo
      if(overallEquipeA-overallEquipeB<6 && overallEquipeA-overallEquipeB>=4){probGM=26;probGS=12;}
      if(overallEquipeA-overallEquipeB<4 && overallEquipeA-overallEquipeB>=2){probGM=23;probGS=14;}
      if(overallEquipeA-overallEquipeB<=2 && overallEquipeA-overallEquipeB>1){probGM=20;probGS=16;}
      if(overallEquipeA-overallEquipeB<=1 && overallEquipeA-overallEquipeB>-1){probGM=18;probGS=18;}
      if(overallEquipeA-overallEquipeB<=-1 && overallEquipeA-overallEquipeB>-2){probGM=16;probGS=20;}
      if(overallEquipeA-overallEquipeB<=-2 && overallEquipeA-overallEquipeB>-4){probGM=14;probGS=23;}
      if(overallEquipeA-overallEquipeB<=-4 && overallEquipeA-overallEquipeB>-6){probGM=12;probGS=26;}
      if(overallEquipeA-overallEquipeB<=-6)                                     {probGM=10;probGS=30;}}
  }


  endMatch(){
    //VITORIA
    if(GlobalFunctions().isJogoCampeonatoNacional()) {
      if (meuGolMarcado > meuGolSofrido) {
        globalClubsLeaguePoints[myClass.clubID] += 3;
        globalMyLeagueLastResults.add(3);
      }
      //EMPATE
      if (meuGolMarcado == meuGolSofrido) {
        globalClubsLeaguePoints[myClass.clubID] += 1;
        globalClubsLeaguePoints[widget.adversarioClubID] += 1;
        globalMyLeagueLastResults.add(1);
      }
      //DERROTA
      if (meuGolMarcado < meuGolSofrido) {
        globalClubsLeaguePoints[widget.adversarioClubID] += 3;
        globalMyLeagueLastResults.add(0);
      }

      globalClubsLeagueGM[myClass.clubID] += meuGolMarcado;
      globalClubsLeagueGS[myClass.clubID] += meuGolSofrido;
      globalClubsLeagueGM[widget.adversarioClubID] += meuGolSofrido;
      globalClubsLeagueGS[widget.adversarioClubID] += meuGolMarcado;
    }

  }

  updateHealth(){
    for(int i=0; i<globalJogadoresMatchHealth.length; i++){
      globalJogadoresMatchHealth[i] -= 0.01;
      if(milis==45) globalJogadoresMatchHealth[i] += 0.1;
    }

  }

  ///////////////////////////////////////////////////////

  void premiacao(){
    double premio=0;
    int campeonatoID = myClass.campeonatoID;
    if(GlobalFunctions().isJogoCampeonatoNacional()){
      if(campeonatoID==1){premio=2.2;}//premierleague
      if(campeonatoID==5 || campeonatoID==7 ||campeonatoID==11){premio=2.0;}//italia, espanha, alemanha
      if(campeonatoID==9){premio=1.8;}//frances
      if(campeonatoID==20){premio=1.6;}//ocidente
      if(campeonatoID==21){premio=1.4;}//leste
      if(campeonatoID==2){premio=1.2;}//championship
      if(campeonatoID==50){premio=1.4;}//brasileiro
      if(campeonatoID==51){premio=0.7;}//serie b
      if(campeonatoID==60){premio=1.1;}//argentina
      if(campeonatoID==61){premio=1.0;}//sulamerica
      if(campeonatoID==62){premio=1.1;}//colombia mexico
      if(campeonatoID==63){premio=1.2;}//mls
      if(campeonatoID==70){premio=1.0;}//asia}
    }else{
      if(GlobalFunctions().qualCopaInternacional(campeonatoID)=='Champions'){
        premio=3;
        if(rodada == semanaOitavas || rodada == semanaQuartas) premio=4.0;
        if(rodada == semanaSemi || rodada == semanaFinal) premio=5.0;
      }
      if(GlobalFunctions().qualCopaInternacional(campeonatoID)=='Libertadores'){
        premio=2;
        if(rodada == semanaOitavas
            || rodada == semanaQuartas) premio=2.5;
        if(rodada == semanaSemi
            || rodada == semanaFinal) premio=3.2;
      }
    }

    if(globalMyLeagueLastResults.last==1){premio=(premio/2);}
    if(globalMyLeagueLastResults.last==0){premio=(premio/3);}

    globalMyMoney += premio*GlobalFunctions().getDificuldadeValue();

  }

  setHistoricGoalsLeagueMy(){
    if(GlobalFunctions().isJogoCampeonatoNacional()){
      List goalsList = List.filled(25, 0);
      int chavePos1 = myClass.posicaoChave;//minha chave
      int chavePos2 = widget.chavePosAdv;//chave adv
      goalsList[chavePos1]  =  meuGolMarcado;
      goalsList[chavePos2]  =  meuGolSofrido;
      //SALVA OS GOLS DO CAMPEONATO
      globalHistoricLeagueGoalsLastRodada[myClass.campeonatoID] = List.from(goalsList);
      //SALVA OS GOLS DO CAMPEONATO NA RODADA
      globalHistoricLeagueGoalsAll[rodada] = Map.from(globalHistoricLeagueGoalsLastRodada);
    }
  }
}