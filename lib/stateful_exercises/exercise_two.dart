import 'package:flutter/material.dart';

class ExerciseTwo extends StatefulWidget {
  const ExerciseTwo({super.key});

  @override
  State<ExerciseTwo> createState() => _ExerciseTwoState();
}

class _ExerciseTwoState extends State<ExerciseTwo> {
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareButton(
          color: _color,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTap,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.red ? Colors.blue : Colors.red;
    });
  }
}

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: 100,
      width: 100,
      color: color,
    );
  }
}
