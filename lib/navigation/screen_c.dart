import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  static const String routeName = '/screenC';

  static Future<void> open(BuildContext context, String id) {
    // return showDialog(
    //   context: context,
    //   builder: (context) {
    //     return AlertDialog(
    //       title: Text('coucou'),
    //     );
    //   },
    // );
    return Navigator.of(context).pushNamed(routeName, arguments: id);
  }

  const ScreenC({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScreenC $id'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go back'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
