import 'package:flutter/material.dart';

class ResponsiveCard extends StatelessWidget {
  const ResponsiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        final smallWidth = maxWidth <= 340;

        if (smallWidth) {
          return Column(
            children: _buildContent(),
          );
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: _buildContent(),
        );
      },
    );
  }

  List<Widget> _buildContent() {
    return [
      Container(
        height: 120,
        width: 120,
        color: Colors.amber,
      ),
      const SizedBox(width: 20),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 200,
            color: Colors.pink,
          ),
          const SizedBox(height: 20),
          Container(
            height: 50,
            width: 200,
            color: Colors.black,
          ),
        ],
      ),
    ];
  }
}
