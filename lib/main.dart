import 'package:clean_arch_bookly_app/core/resources/route_manager.dart';
import 'package:clean_arch_bookly_app/core/styles/color_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColor.primary,
      ),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: AppRoute.splashView.name,
      // home: const SplashView(),
    );
  }
}
