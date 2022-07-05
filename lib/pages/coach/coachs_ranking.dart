import 'package:fifa/classes/image_class.dart';
import 'package:fifa/page_controller/coach/coach_ranking_controller.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/theme/translation.dart';
import 'package:fifa/widgets/back_button.dart';
import 'package:flutter/material.dart';

class CoachRanking extends StatefulWidget {
  const CoachRanking({Key? key}) : super(key: key);

  @override
  State<CoachRanking> createState() => _CoachRankingState();
}

class _CoachRankingState extends State<CoachRanking> {

  CoachRankingController controller = CoachRankingController();

  ////////////////////////////////////////////////////////////////////////////
//                               INIT                                     //
////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    organizarRanking();
    super.initState();
  }
  organizarRanking() async {
    await controller.getStoredDataList();
    setState(() {});
  }
////////////////////////////////////////////////////////////////////////////
//                               BUILD                                    //
////////////////////////////////////////////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Images().getWallpaper(),
          Column(
            children: [
              backButtonText(context,'Melhores treinadores'),
              title(),
              controller.savedCoachsListSeparated.isNotEmpty
                  ? Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                    itemCount: controller.savedCoachsListSeparated.length,
                    itemBuilder: (c,i)=> row(i,controller.savedCoachsListSeparated[i])
                ),
              )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }


////////////////////////////////////////////////////////////////////////////
//                               WIDGETS                                  //
////////////////////////////////////////////////////////////////////////////
  Widget title(){
    return Row(
        children: [
          const SizedBox(width: 40),
          Text(Translation(context).text.name,style: EstiloTextoBranco.negrito16),
          const Spacer(),
          Text(Translation(context).text.points,style: EstiloTextoBranco.negrito16),
          const SizedBox(width: 8),
        ],
    );
  }

  Widget row(int i,List list){
    controller.listToClassCoach(list);
    return Container(
        margin: const EdgeInsets.all(4),
        child: Row(
      children: [
        SizedBox(
          width: 35,
          child: Text((i+1).toString()+'º',style: EstiloTextoBranco.text16),
        ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(controller.coach.name,style: EstiloTextoBranco.negrito16),
              Row(
                children: [
                  Text(controller.coach.simulationYear.toString(),style: EstiloTextoBranco.text16),
                  Image.asset(Images().getEscudo(controller.coach.clubName),height:20,width: 20,),
                  ],
              )
            ],
          ),
        const Spacer(),
        Column(
          children: [
            Text(controller.coach.points.toString(),style: EstiloTextoBranco.negrito16),
            Text(controller.coach.date,style: EstiloTextoBranco.text12),
          ],
        )
      ],
    )
    );
}

}