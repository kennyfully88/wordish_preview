import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wordish/providers/app_logic.dart';
import 'package:wordish/providers/images_set.dart';

class ResetButton extends StatefulWidget {
  const ResetButton({super.key});

  @override
  State<ResetButton> createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
          context.read<AppLogic>().resetQuiz(
                Provider.of<ImagesSet>(context, listen: false),
              );
        },
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? const Color(0xFF808080) : const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: 128.0,
          height: 32,
          margin: const EdgeInsets.all(4.0),
          padding: const EdgeInsets.all(2.0),
          child: const Center(
            child: Text(
              'Reset',
              style: TextStyle(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
