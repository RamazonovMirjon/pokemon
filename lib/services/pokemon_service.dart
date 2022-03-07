import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokemon/models/pokemon_model.dart';

class PokemonService {
  static Future<List<PokedexModel>> getPokemones() async {
    Response response = await Dio().get(
        "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
    var data1 = jsonDecode(response.data);
    print(data1['pokemon'][7]['weight']);
    return (response.data as List).map((e) => PokedexModel.fromJson(e)).toList();
    //return PokedexModel.fromJson(response.data);
  }
}
