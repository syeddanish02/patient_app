import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double progress; // Progress value from 0.0 to 1.0
  final Color backgroundColor;
  final Color valueColor;

  const ProgressIndicatorWidget({
    Key? key,
    required this.progress,
    this.backgroundColor = Colors.grey,
    this.valueColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: progress,
      backgroundColor: backgroundColor,
      valueColor: AlwaysStoppedAnimation<Color>(valueColor),
    );
  }
}
