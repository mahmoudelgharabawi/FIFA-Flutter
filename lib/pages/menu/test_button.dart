import 'package:fifa/classes/match/adversario.dart';
import 'package:fifa/global_variables.dart';
import 'package:fifa/theme/custom_toast.dart';
import 'package:flutter/material.dart';

Widget test(BuildContext context){
  return
    //TEST FUNCTIONS BUTTON
    testInitRodada == 1 ? Container(
      alignment: Alignment.bottomCenter,
      child: GestureDetector(
          onTap:(){
            customToast('TESTE DE FUNÇÃO');
            Adversario adversario = Adversario();
            adversario.getAdversario();
          },
          child: const Icon(Icons.terminal_sharp,color:Colors.white,size: 50)
      ),
    ) : Container();
}