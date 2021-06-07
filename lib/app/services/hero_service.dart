import 'package:conversor/app/models/hero_model.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

Uri url = Uri.parse(
    'https://cdn.jsdelivr.net/gh/akabab/superhero-api@0.3.0/api/all.json');

class HeroService {
  Future<List<HeroModel>> getHero() async {
    http.Response _response = await http.get(url);

    if (_response.statusCode == 200) {
      Iterable decoded = jsonDecode(_response.body);

      List<HeroModel> result = List<HeroModel>.from(
          decoded.map((model) => HeroModel.fromJson(model)));

      return result;
    }
  }
}
