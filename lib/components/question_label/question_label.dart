import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wordish/providers/app_logic.dart';

class QuestionLabel extends StatelessWidget {
  const QuestionLabel({super.key});

  @override
  Widget build(BuildContext context) {
    int currentQuestionCounter =
        context.watch<AppLogic>().currentQuestionCounter;

    return SizedBox(
      width: 128.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Question',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Text(
              '$currentQuestionCounter/10',
              style: const TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
