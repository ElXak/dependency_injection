import 'package:dependency_injection/app_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'get_it.dart';
import 'home_view.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AppInfo(),
      child: MaterialApp(
        title: 'Dependency Injection',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: HomeView(),
        ),
      ),
    );
  }
}
