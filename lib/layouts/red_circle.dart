import 'package:flutter/material.dart';

class RedCircle extends StatelessWidget {
  const RedCircle({
    super.key,
    this.index = 0,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    print('Building red circle $index');
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
