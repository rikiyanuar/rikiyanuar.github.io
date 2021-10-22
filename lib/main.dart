import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/components/app/index.dart';
import 'core/notifier/main_notifier.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ChangeNotifierProvider<MainNotifier>(
    create: (_) => MainNotifier(),
    child: KjApp(),
  ));
}
