import 'package:flutter/material.dart';
import 'package:task/core/constant/app_color.dart';
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
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Poppins",
        primaryColor: AppColor.primary,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
      title: 'Flutter Task',
    );
  }
}
