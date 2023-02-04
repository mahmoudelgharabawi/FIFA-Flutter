import 'package:fifa/classes/club.dart';
import 'package:fifa/classes/image_class.dart';
import 'package:fifa/theme/textstyle.dart';
import 'package:fifa/widgets/stars.dart';
import 'package:flutter/material.dart';

Widget wHomeClubLogoAndKitStack(Club club){
  double imageSize = 200;
  return  Column(
    children: [
      SizedBox(
        height: imageSize,
        width: imageSize,
        child: Stack(
          children: [
            //Image.asset(Images().getStadium(club.name),height: imageSize,width: imageSize,fit: BoxFit.fill,),
            //Escudo
            Images().getEscudoWidget(club.name,imageSize,imageSize),
            //Uniforme
            Container(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                  height: imageSize/2,
                  width: imageSize/2,
                  child: Images().getUniformWidget(club.name,imageSize/2,imageSize/2)),
            ),
          ],
        ),
      ),
      Text(club.name,style:EstiloTextoBranco.text25),
      starsWidgetFromOverall(club.getOverall()),
    ],
  );
}