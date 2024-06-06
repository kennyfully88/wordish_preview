import 'package:flutter/widgets.dart';

enum QuestionResult {
  yet(
    Color(0xFFFFFFFF),
  ),
  right(
    Color(0xFF00FF00),
  ),
  wrong(
    Color(0xFFFF0000),
  );

  const QuestionResult(this.color);
  final Color color;
}
