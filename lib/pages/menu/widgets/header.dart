import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/functions/dificuldade.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/classes/my.dart';
import 'package:fifa/classes/semana.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/theme/translation.dart';
import 'package:flutter/material.dart';

Widget wHomeHeader(BuildContext context, My myClass, Club myClub){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [

      //Escudo
      Images().getMyEscudo(size: 90),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width:180,child: Text(myClass.clubName,textAlign: TextAlign.center,style: EstiloTextoBranco.negrito22)),
          Text('${Translation(context).text.year}: ${Semana(semana).realDate} ${Translation(context).text.week}: '+ semana.toString(),style: EstiloTextoBranco.negrito14),
          const SizedBox(height: 8),
          Row(
            children: [
                Text('${Translation(context).text.money}: ',style: EstiloTextoBranco.text14),
              Text('\$'+ myClass.money.toStringAsFixed(2)+'mi',style: EstiloTextoBranco.negrito16),
            ],
          ),
          Row(
            children: [
              Text('${Translation(context).text.ovr3}: ',style: EstiloTextoBranco.text14),
              Text(Club(index: myClass.clubID).getOverall().toStringAsFixed(2), style: EstiloTextoBranco.negrito18),
            ],
          ),
          Text('${Translation(context).text.difficulty}: '+DificuldadeClass().getNameTranslated(context),style: EstiloTextoBranco.text14),
        ],
      ),

      //UNIFORME
      Images().getMyUniform(height: 100,width: 100),

    ],
  );
}