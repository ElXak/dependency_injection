import 'package:dependency_injection/inherited_injection.dart';
import 'package:flutter/material.dart';

import 'app_info.dart';

class HomeView extends StatelessWidget {
  // Home view has a dependency on the AppInfo
  AppInfo appInfo;

  HomeView({Key key, this.appInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyList(),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostItem();
  }
}

class PostItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostMenu();
  }
}

class PostMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostAction();
  }
}

class PostAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LikeButton();
  }
}

class LikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // We have access to it anywhere
    AppInfo appInfo = InheritedInjection.of(context).appInfo;
    return Container();
  }
}
