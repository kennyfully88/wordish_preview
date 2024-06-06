import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wordish/providers/app_logic.dart';
import 'package:wordish/providers/images_set.dart';

class QuestionPicture extends StatelessWidget {
  const QuestionPicture({super.key});

  @override
  Widget build(BuildContext context) {
    String pictureResult = context.watch<AppLogic>().pictureResult;

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10.0),
      ),
      width: 80.0,
      height: 80.0,
      margin: const EdgeInsets.only(
        left: 2.0,
        top: 4.0,
        right: 2.0,
        bottom: 4.0,
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.memory(
        context.watch<ImagesSet>().images[pictureResult]!,
        gaplessPlayback: true,
      ),
    );
  }
}
