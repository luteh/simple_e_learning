import 'package:flutter/material.dart';

import 'di/injection_container.dart';
import 'presentation/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}
