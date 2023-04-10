import 'package:animated_number/animated_number.dart';
import 'package:flutter/material.dart';

class AnimatedNumbersClass {
  AnimatedNumbersClass({
    required this.title,
    required this.endValue,
    required this.suffix,
  });
  String title;
  int endValue;
  String suffix;
}

List<AnimatedNumbersClass> animatedNumbersList = [
  AnimatedNumbersClass(title: 'Students', endValue: 15, suffix: 'K+'),
  AnimatedNumbersClass(
      title: 'Certificates delivered', endValue: 10, suffix: 'K+'),
  AnimatedNumbersClass(title: 'Streamed minutes', endValue: 450, suffix: 'K+'),
  AnimatedNumbersClass(
      title: 'Content streamed in last 60 days', endValue: 12, suffix: 'TB+'),
  AnimatedNumbersClass(title: 'Creators', endValue: 50, suffix: '+'),
  AnimatedNumbersClass(title: 'Programs available', endValue: 110, suffix: '+'),
];

class AnimatedNumbers extends StatelessWidget {
  const AnimatedNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i in animatedNumbersList)
          Column(
            children: [
              AnimatedNumber(
                startValue: 0,
                endValue: i.endValue,
                sufixText: i.suffix,
                duration: const Duration(seconds: 3),
                isFloatingPoint: false,
                style: const TextStyle(
                  color: Colors.orange,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                i.title,
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
      ],
    );
  }
}
