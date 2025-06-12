import 'package:flutter/material.dart';
import 'package:moc_3_2025/navigation/screen_a.dart';
import 'package:moc_3_2025/navigation/screen_b.dart';
import 'package:moc_3_2025/navigation/screen_c.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go to screen A'),
              onPressed: () => _goToScreenA(context),
            ),
            ElevatedButton(
              child: Text('Go to screen B'),
              onPressed: () => _goToScreenB(context),
            ),
            ElevatedButton(
              child: Text('Go to screen C'),
              onPressed: () => _goToScreenC(context),
            ),
          ],
        ),
      ),
    );
  }

  void _goToScreenA(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ScreenA(),
      ),
    );
  }

  void _goToScreenB(BuildContext context) {
    Navigator.of(context).pushNamed(ScreenB.routeName);
  }

  void _goToScreenC(BuildContext context) {
    // Navigator.of(context).pushNamed(
    //   ScreenC.routeName,
    //   arguments: '10',
    // );

    ScreenC.open(context, 'toto');
  }
}
