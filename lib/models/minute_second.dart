import 'package:flutter/foundation.dart';

class MinuteSecond {
  int minute;
  int second;

  MinuteSecond({
    @required this.minute,
    @required this.second,
  });

  MinuteSecond.fromString(String str) {
    final List<String> splitted = str.split(':');
    this.minute = int.parse(splitted[0]);
    this.second = int.parse(splitted[1]);
  }

  MinuteSecond.fromDuration(Duration duration) {
    final seconds = duration.inSeconds;
    this.minute = (seconds / Duration.secondsPerMinute).floor();
    this.second = seconds % Duration.secondsPerMinute;
  }

  String toString() {
    return '$minute:' + '$second'.padLeft(2, '0');
  }
}
