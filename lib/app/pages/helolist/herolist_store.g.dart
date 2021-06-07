// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'herolist_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HeroStore on _HeroStore, Store {
  final _$heroesApiAtom = Atom(name: '_HeroStore.heroesApi');

  @override
  List<HeroModel> get heroesApi {
    _$heroesApiAtom.reportRead();
    return super.heroesApi;
  }

  @override
  set heroesApi(List<HeroModel> value) {
    _$heroesApiAtom.reportWrite(value, super.heroesApi, () {
      super.heroesApi = value;
    });
  }

  final _$_HeroStoreActionController = ActionController(name: '_HeroStore');

  @override
  dynamic addHero(List<HeroModel> r) {
    final _$actionInfo =
        _$_HeroStoreActionController.startAction(name: '_HeroStore.addHero');
    try {
      return super.addHero(r);
    } finally {
      _$_HeroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterHero(String text) {
    final _$actionInfo =
        _$_HeroStoreActionController.startAction(name: '_HeroStore.filterHero');
    try {
      return super.filterHero(text);
    } finally {
      _$_HeroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic filterRandom(int id) {
    final _$actionInfo = _$_HeroStoreActionController.startAction(
        name: '_HeroStore.filterRandom');
    try {
      return super.filterRandom(id);
    } finally {
      _$_HeroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
heroesApi: ${heroesApi}
    ''';
  }
}
