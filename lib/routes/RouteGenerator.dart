import 'package:flutter/material.dart';
import 'package:projek_akhir/ui/AkademikPage.dart';
import 'package:projek_akhir/ui/HomePage.dart';
import 'package:projek_akhir/ui/list_news.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/academic':
        return MaterialPageRoute(builder: (_) => AkademikPage());
      case '/news':
        return MaterialPageRoute(builder: (_) => ListNews());
      default:
        return _errorRoute();
    }
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      body: Center(
        child: Text('ERROR'),
      ),
    );
  });
}
