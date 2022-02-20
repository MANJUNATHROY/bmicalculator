

import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:flutter/material.dart';

class LeftBar extends StatelessWidget {
   double barWidth=40;
   LeftBar({Key? key, @required this.barWidth=40}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.end,
      children: [
        Container(

          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            color:Colors.yellow,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(25) ,
              bottomLeft:Radius.circular(25),
            ),
          ),
        ),
      ],



    );
  }
}
