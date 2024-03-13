import 'package:flutter/material.dart';
import 'ui/screens/splash/index.dart';
import './routes.dart';
import 'package:go_router/go_router.dart';
import 'package:fidemlt/ui/theme/apptheme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = gorouter;

    return MaterialApp.router(
        routerConfig: router, title: 'Fidemlt', theme: appTheme);
  }
}
