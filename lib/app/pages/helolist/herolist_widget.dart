import 'package:conversor/app/models/hero_model.dart';
import 'package:conversor/app/pages/about/about_page.dart';
import 'package:conversor/app/pages/helolist/herolist_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HeroList extends StatefulWidget {
  @override
  _ConvertState createState() => _ConvertState();
}

final heroStore = HeroStore();

class _ConvertState extends State<HeroList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
        future: heroStore.fetchHero(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Opsss... Erro ao carregar lista!"));
          } else if (snapshot.hasData) {
            return Observer(
                builder: (_) => ListView.builder(
                      itemCount: heroStore.heroes.length,
                      itemBuilder: (context, index) {
                        return _getHero(context, heroStore.heroes[index]);
                      },
                    ));
          } else {
            return Center(
                child: CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.orange),
            ));
          }
        });
  }
}

_getHero(BuildContext context, HeroModel hero) {
  return new Card(
      child: new Column(
    children: <Widget>[
      new ListTile(
        leading: new Image(
          image: NetworkImage("${hero.images.xs}"),
        ),
        title: new Text(
          hero.name,
          style: new TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
        subtitle: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(hero.work.occupation,
                  style: new TextStyle(
                      fontSize: 13.0, fontWeight: FontWeight.normal)),
              new Text('Power: ${hero.powerstats.power}',
                  style: new TextStyle(
                      fontSize: 11.0, fontWeight: FontWeight.normal)),
            ]),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => About(hero: hero)));
        },
      )
    ],
  ));
}
