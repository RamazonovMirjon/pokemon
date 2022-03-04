import 'package:flutter/material.dart';
import 'package:pokemon/screens/home/home_page.dart';
import 'package:pokemon/screens/info_page.dart';

class MyRoute {
  

  Route? onGenerateRout(RouteSettings settings) {
    var arguments = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: ((context) => const MyHomePage()),
        );
      case "/info":
        return MaterialPageRoute(
          builder: ((context) => const InfoPage()),
        );
    }
    return null;
    
  }
}
