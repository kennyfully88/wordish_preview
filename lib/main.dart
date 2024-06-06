import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:wordish/enums/app_views.dart';
import 'package:wordish/providers/app_logic.dart';
import 'package:wordish/providers/images_set.dart';
import 'package:wordish/providers/navigation_logic.dart';
import 'package:wordish/views/main_view/main_view.dart';
import 'package:wordish/views/splash_view/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: <ChangeNotifierProvider>[
        ChangeNotifierProvider<ImagesSet>(create: (_) => ImagesSet()),
        ChangeNotifierProvider<AppLogic>(create: (_) => AppLogic()),
        ChangeNotifierProvider<NavigationLogic>(
            create: (_) => NavigationLogic()),
      ],
      child: const WordishApp(),
    ),
  );
}

class WordishApp extends StatelessWidget {
  const WordishApp({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<ImagesSet>().setImages();

    Widget renderView() {
      if (context.watch<NavigationLogic>().currentAppView == AppViews.splash) {
        return const SplashView();
      } else {
        return const MainView();
      }
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: Color(0xFF00FFFF),
          fontFamily: 'ibm_plex_sans_jp',
        ),
        child: SafeArea(
          child: Transform.scale(
            scale: 2.0,
            child: renderView(),
          ),
        ),
      ),
    );
  }
}
