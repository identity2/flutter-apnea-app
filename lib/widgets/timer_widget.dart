import 'package:flutter/material.dart';

import '../models/minute_second.dart';

class TimerWidget extends StatelessWidget {
  final MinuteSecond currTime;

  TimerWidget(this.currTime);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 80,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            currTime.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
