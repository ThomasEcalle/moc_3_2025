import 'package:flutter/material.dart';
import 'package:moc_3_2025/home_screen.dart';
import 'package:moc_3_2025/lists/lists_screen.dart';

import 'layouts/layouts_screen.dart';
import 'stateful_exercises/exercise_one.dart';
import 'stateful_exercises/exercise_three.dart';
import 'stateful_exercises/exercise_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 42,
            color: Colors.orange,
          ),
        ),
      ),
      home: ListsScreen(),
    );
  }
}
