import 'package:diagnosis/src/constants.dart';
import 'package:flutter/material.dart';

import 'package:ai_progress/ai_progress.dart';

class SharedManager {
  static final SharedManager _singleton = SharedManager._internal();

  factory SharedManager() {
    return _singleton;
  }

  SharedManager._internal();

  int? expertType = 1;

  Widget showProgressBar(int value, double width) {
    int percentage = (value / 10 * 100).toInt();

    return Container(
      margin: const EdgeInsets.only(
        top: 90,
        // left: 20,
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            // padding: const EdgeInsets.all(0),
            child: AirStepStateProgressIndicator(
              size: Size(width, 150),
              stepCount: 10,
              stepValue: value,
              valueColor:
                  ColorTween(begin: lightIndigoColor, end: warmGreyColor)
                      .transform(value / 10)!,
              pathStrokeWidth: 10.0,
              valueStrokeWidth: 10.0,
            ),
          ),
          const Spacer(),
          Text("$percentage%"),
        ],
      ),
    );
  }
}
