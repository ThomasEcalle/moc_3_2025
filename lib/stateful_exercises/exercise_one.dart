import 'package:flutter/material.dart';

class ExerciseOne extends StatelessWidget {
  const ExerciseOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareButton(),
      ),
    );
  }
}

class SquareButton extends StatefulWidget {
  const SquareButton({super.key});

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  Color _color = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_color == Colors.amber ? 0 : 20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    print('Button clicked');
    setState(() {
      _color = _color == Colors.amber ? Colors.blue : Colors.amber;
    });
  }
}
