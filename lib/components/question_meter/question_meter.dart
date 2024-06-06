import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wordish/providers/app_logic.dart';

class QuestionMeter extends StatelessWidget {
  const QuestionMeter({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    List questionMeterItems = context.watch<AppLogic>().questionMeterItems;

    return Container(
      width: 16.0,
      height: 80.0,
      margin: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int item = 0; item < 5; item++)
            Container(
              decoration: BoxDecoration(
                color: questionMeterItems[(id * 5) + item]['correctness'].color,
                borderRadius: BorderRadius.circular(5.0),
              ),
              width: 10.0,
              height: 10.0,
            ),
        ],
      ),
    );
  }
}
