

import 'package:bmi_calculator/constants/app_constants.dart';
import 'package:flutter/material.dart';

class RightBar extends StatelessWidget {
  double barWidth=70;
  RightBar({Key? key, @required this.barWidth=70}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.start,
      children: [
        Container(

          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.only(
              topRight:Radius.circular(25) ,
              bottomRight:Radius.circular(25),
            ),
          ),
        ),
      ],



    );
  }
}
