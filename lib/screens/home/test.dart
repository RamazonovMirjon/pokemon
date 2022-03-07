import 'package:flutter/material.dart';
import 'package:pokemon/services/pokemon_service.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        PokemonService.getPokemones();
      }),
    );
  }
}
