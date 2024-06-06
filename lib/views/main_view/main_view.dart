import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wordish/components/app_button/app_button.dart';
import 'package:wordish/components/question_label/question_label.dart';
import 'package:wordish/components/question_meter/question_meter.dart';
import 'package:wordish/components/question_picture/question_picture.dart';
import 'package:wordish/components/reset_button/reset_button.dart';
import 'package:wordish/providers/app_logic.dart';
import 'package:wordish/providers/images_set.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    bool appInit = context.watch<AppLogic>().appInit;

    if (!appInit) {
      context.read<AppLogic>().setQuestion(context.watch<ImagesSet>());
      context.read<AppLogic>().initApp();
    }

    return Container(
      color: const Color(0xFF301934),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const QuestionLabel(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QuestionPicture(),
              QuestionMeter(id: 0),
              QuestionMeter(id: 1),
            ],
          ),
          const SizedBox(
            width: 128.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  id: 0,
                ),
                AppButton(
                  id: 1,
                ),
              ],
            ),
          ),
          context.watch<AppLogic>().quizEnded
              ? const ResetButton()
              : Container(),
        ],
      ),
    );
  }
}
