import 'package:flutter/material.dart';
import 'package:pokemon/core/components/theme_comp.dart';
import 'package:pokemon/routes/my_riutes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateInitialRoutes: _myRoute.onPerateRoute,
        theme: ThemeComp.materialTheme,
        initialRoute: "/"
          
      );
}
