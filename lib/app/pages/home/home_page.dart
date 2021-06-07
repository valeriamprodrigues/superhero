import 'dart:math';

import 'package:conversor/app/pages/about/about_page.dart';
import 'package:conversor/app/pages/helolist/herolist_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 213, 92, 10),
          title: _search(),
        ),
        body: HeroList(),
        floatingActionButton: _randon(context));
  }
}

_search() {
  return TextField(
      style: TextStyle(fontSize: 15),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
      ),
      onChanged: (text) {
        heroStore.filterHero(text);
      });
}

_randon(BuildContext context) {
  var rng = new Random();
  return FloatingActionButton.extended(
    onPressed: () {
      var hero =
          heroStore.filterRandom(rng.nextInt(heroStore.heroesApi.length));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => About(hero: hero)));
    },
    label: const Text('Random'),
    icon: const Icon(Icons.auto_fix_high),
    backgroundColor: Colors.orange,
  );
}
