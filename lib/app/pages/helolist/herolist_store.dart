import 'dart:math';

import 'package:conversor/app/services/hero_service.dart';
import 'package:mobx/mobx.dart';
import 'package:conversor/app/models/hero_model.dart';
part 'herolist_store.g.dart';

class HeroStore = _HeroStore with _$HeroStore;

abstract class _HeroStore with Store {
  @observable
  var heroesApi = <HeroModel>[];
  var heroes = ObservableList<HeroModel>();

  //Busca na API
  Future<bool> fetchHero() async {
    this.heroesApi = await HeroService().getHero();
    addHero(this.heroesApi);
    return true;
  }

//Adicionar itens na tela
  @action
  addHero(List<HeroModel> r) {
    this.heroes.clear();
    this.heroes.addAll(r);
  }

  @action
  filterHero(String text) {
    var heroesFilter = heroesApi.where((i) {
      var n = i.name.replaceAll(new RegExp(r'[^\w\s]+'), '');
      var t = text.replaceAll(new RegExp(r'[^\w\s]+'), '');
      return n.toLowerCase().contains(t.toLowerCase()) ||
          i.appearance.gender.toLowerCase().contains(t.toLowerCase());
    }).toList();
    addHero(heroesFilter);
  }

  @action
  filterRandom(int id) {
    return heroesApi.firstWhere((i) => i.id == id);
  }
}
