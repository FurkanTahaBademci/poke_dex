import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/model/pokemon_model.dart';

class PokeApi {
  static const String _baseUrl =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemonList() async {
    List<PokemonModel> _list = [];

    var result = await Dio().get(_baseUrl);
    var pokeList = jsonDecode(result.data)['pokemon'];
    debugPrint(pokeList.toString());
    if (pokeList is List) {
      _list = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }
    debugPrint(_list.length.toString());

    return _list;
  }
}
