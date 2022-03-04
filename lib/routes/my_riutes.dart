import 'package:flutter/material.dart';
import 'package:pokemon/screens/home/home_page.dart';

class MyRoute {
  get onPerateRoute => null;

  Route? onGenerateRoute(RouteSettings settings) {
    var arguments = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: ((context) => const MyHomePage()),
        );
    }
    return null;
  }
}
