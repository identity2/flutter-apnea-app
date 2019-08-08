import 'package:flutter/material.dart';

import './screens/training_screen.dart';
import './screens/breath_hold_test_screen.dart';
import './screens/settings_screen.dart';
import './screens/breath_hold_test_history_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apnea',
      home: TrainingScreen(),
      routes: {
        TrainingScreen.routeName: (ctx) => TrainingScreen(),
        BreathHoldTestScreen.routeName: (ctx) => BreathHoldTestScreen(),
        SettingsScreen.routeName: (ctx) => SettingsScreen(),
        BreathHoldTestHistoryScreen.routeName: (ctx) => BreathHoldTestHistoryScreen(),
      },
    );
  }
}
