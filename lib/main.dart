import 'package:flutter/material.dart';
import 'package:moc_3_2025/navigation/navigation_screen.dart';
import 'package:moc_3_2025/navigation/screen_b.dart';

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
      routes: {
        '/': (context) => NavigationScreen(),
        ScreenB.routeName: (context) => ScreenB(),
      },
    );
  }
}
