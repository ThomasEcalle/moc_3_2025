import 'package:flutter/material.dart';

import 'red_circle.dart';

class LayoutsScreen extends StatelessWidget {
  const LayoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final isSmallScreen = mediaQuery.size.width < 600;
    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: isSmallScreen ? Colors.orange : Colors.pink,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            direction: Axis.horizontal,
                            children: List.generate(100, (index) {
                              return RedCircle();
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedCircle(),
                              const SizedBox(width: 10),
                              RedCircle(),
                              const Spacer(),
                              RedCircle(),
                              // Expanded(
                              //   child: Align(
                              //     alignment: Alignment.topRight,
                              //     child: RedCircle(),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
