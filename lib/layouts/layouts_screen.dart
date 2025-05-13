import 'package:flutter/material.dart';

import 'red_circle.dart';
import 'responsive_card.dart';

class LayoutsScreen extends StatefulWidget {
  const LayoutsScreen({super.key});

  @override
  State<LayoutsScreen> createState() => _LayoutsScreenState();
}

class _LayoutsScreenState extends State<LayoutsScreen> {
  bool _animate = false;

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
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _animate = !_animate;
                          });
                        },
                        child: Container(
                          color: isSmallScreen ? Colors.orange : Colors.pink,
                        ),
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
                child: Stack(
                  children: [
                    Row(
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
                            height: double.infinity,
                            color: Colors.green,
                            child: ResponsiveCard(),
                          ),
                        ),
                      ],
                    ),
                    AnimatedPositioned(
                      duration: const Duration(milliseconds: 500),
                      top: _animate ? 50 : 120,
                      left: _animate ? 20 : 100,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 500),
                        height: 100,
                        width: _animate ? 50 : 100,
                        color: _animate ? Colors.yellow: Colors.red,
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        color: Colors.black.withValues(alpha: .2),
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
