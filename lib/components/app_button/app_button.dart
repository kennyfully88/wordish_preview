import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wordish/providers/app_logic.dart';
import 'package:wordish/providers/images_set.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    String word = context.watch<AppLogic>().currentAnswerChoices[widget.id];

    return Expanded(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          if (isActive) return;
          setState(() {
            isActive = true;
          });
        },
        onExit: (event) {
          setState(() {
            isActive = false;
          });
        },
        child: GestureDetector(
          onTap: () {
            context.read<AppLogic>().checkAnswer(
                  widget.id,
                  Provider.of<ImagesSet>(context, listen: false),
                );
          },
          child: Container(
            decoration: BoxDecoration(
              color:
                  isActive ? const Color(0xFF808080) : const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(10.0),
            ),
            height: 32,
            margin: const EdgeInsets.all(2.0),
            padding: const EdgeInsets.all(2.0),
            child: FittedBox(
              child: Text(
                word,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
