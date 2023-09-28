import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class linearpercent extends StatelessWidget {
  const linearpercent({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LinearPercentIndicator(
        animation: true,
        barRadius: Radius.circular(10),
        animationDuration: 500,
        lineHeight: 30,
        percent: 0.4,
        center: Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Text(
            'Uploading.....40%',
            style: TextStyle(fontFamily: 'Montserrat2', fontSize: 13),
          ),
        ),
        progressColor: Color(0xff355FF5),
        backgroundColor: Color(0xffD9D6D6),
      ),
    );
  }
}
