import 'package:flutter/material.dart';
import 'package:task/core/theme/theme_manager.dart';
import 'package:task/routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      title: 'nectar',
      theme: ThemeManager.light,
    );
  }
}
