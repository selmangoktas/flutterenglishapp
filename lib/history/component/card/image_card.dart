import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../data/data.dart';

class ImageCard extends StatelessWidget {
  ImageCard({super.key, required this.index});
  double randomNumber = Random().nextDouble();
  int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(10),
      decoration: _boxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [_image(), _texts(context)],
      ),
    );
  }

  Expanded _texts(BuildContext context) {
    return Expanded(
      flex: 7,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Data.instance.topics.keys.toList()[index], style: Theme.of(context).textTheme.headline5),
            LinearPercentIndicator(
              percent: randomNumber,
              lineHeight: 20,
              barRadius: Radius.circular(10),
              progressColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }

  Expanded _image() {
    return Expanded(
      flex: 3,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(Data.instance.topics.values.toList()[index]), fit: BoxFit.fill),
          color: Colors.green,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  BoxDecoration get _boxDecoration => BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFF663377), Color(0xFF663377).withOpacity(0.5)]),
        borderRadius: BorderRadius.circular(10),
      );
}
