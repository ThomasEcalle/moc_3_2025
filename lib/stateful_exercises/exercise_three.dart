import 'package:flutter/material.dart';

class ExerciseThree extends StatefulWidget {
  const ExerciseThree({super.key});

  @override
  State<ExerciseThree> createState() => _ExerciseThreeState();
}

class _ExerciseThreeState extends State<ExerciseThree> {
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _color,
      body: Center(
        child: SquareButton(
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _color = _color == Colors.blue ? Colors.pink : Colors.blue;
    });
  }
}

class SquareButton extends StatelessWidget {
  const SquareButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
