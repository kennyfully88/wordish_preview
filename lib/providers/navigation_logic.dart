import 'package:flutter/widgets.dart';
import 'package:wordish/enums/app_views.dart';

class NavigationLogic extends ChangeNotifier {
  AppViews _currentAppView = AppViews.splash;
  AppViews get currentAppView => _currentAppView;

  void setAppView(AppViews appView) {
    if (_currentAppView == appView) return;
    _currentAppView = appView;
    notifyListeners();
  }
}
