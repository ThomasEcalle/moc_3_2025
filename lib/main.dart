import 'package:flutter/material.dart';
import 'package:moc_3_2025/navigation/navigation_screen.dart';
import 'package:moc_3_2025/navigation/screen_b.dart';
import 'package:moc_3_2025/navigation/screen_c.dart';

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
      onGenerateRoute: (settings) {
        Widget content = const SizedBox();

        switch (settings.name) {
          case ScreenC.routeName:
            final argument = settings.arguments;
            if (argument is String) {
              content = ScreenC(id: argument);
            }
            break;
        }

        return MaterialPageRoute(builder: (context) => content);
      },
    );
  }
}
