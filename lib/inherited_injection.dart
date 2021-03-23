import 'package:flutter/material.dart';

import 'app_info.dart';

class InheritedInjection extends InheritedWidget {
  final AppInfo _appInfo = AppInfo();
  final Widget child;

  InheritedInjection({
    Key key,
    @required Widget child,
  })  : assert(child != null),
        super(key: key, child: child);

  AppInfo get appInfo => _appInfo;

  static InheritedInjection of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedInjection>();
  }

  @override
  bool updateShouldNotify(InheritedInjection old) {
    return true;
  }
}
