import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
class CostWidget extends StatelessWidget{
final Color color;
final double cost;
  const CostWidget({super.key, required this.color, required this.cost});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize:MainAxisSize.min,
      children: [
Text("\$",
  style: TextStyle(
      fontSize: 20,
fontFeatures: [
  FontFeature.superscripts()
]
  ),
),
        Text(cost.toInt().toString(),
          style: const TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
    (cost - cost.truncate()).toString(),
          style: const TextStyle(
              fontSize: 10,
              fontFeatures: const[
                FontFeature.superscripts()
              ]
          ),
        ),
      ],
    );
  }
}
