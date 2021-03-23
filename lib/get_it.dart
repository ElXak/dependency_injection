import 'package:get_it/get_it.dart';

import 'app_info.dart';

GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerFactory(() => AppInfo());
}
