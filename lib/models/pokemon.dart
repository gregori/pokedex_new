import 'dart:ffi';

import 'package:pokedex/utils/constants.dart';

class Pokemon {
  String name;
  String url;

  Pokemon({required this.name, required this.url});

  // quebra a url em lista, inverte, pula o 1º el e retorna o segundo
  // converte para inteiro
  get id => url.split('/').reversed.skip(1).first as Int;
  get image => '$pokemonImgUrl/$id.png';

  factory Pokemon.fromJson(Map<String, dynamic> jsonData) {
    return Pokemon(name: jsonData['name'], url: jsonData['url']);
  }
}
