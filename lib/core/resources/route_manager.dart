import 'package:clean_arch_bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/home_view.dart';
import 'package:clean_arch_bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

enum AppRoute { splashView, homeView, bookDetailsView }

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    try {
      final AppRoute route = AppRoute.values.byName(routeSettings.name!);
      switch (route) {
        case AppRoute.splashView:
          return MaterialPageRoute(builder: (_) => const SplashView());
        case AppRoute.homeView:
          return MaterialPageRoute(builder: (_) => const HomeView());
        case AppRoute.bookDetailsView:
          return MaterialPageRoute(builder: (_) => const BookDetailsView());
      }
    } catch (e) {
      return _unDefinedRoute();
    }
  }

  static Route<dynamic> _unDefinedRoute() {
    return MaterialPageRoute(
      builder:
          (_) => Scaffold(
            appBar: AppBar(title: const Text("No Route Found")),
            body: const Center(child: Text("No Route Found")),
          ),
    );
  }
}
