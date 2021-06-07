import 'package:conversor/app/models/hero_model.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({this.hero});
  final HeroModel hero;
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color.fromRGBO(255, 213, 92, 10), Colors.orange],
                  ),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.grey[500],
                      blurRadius: 20.0,
                      spreadRadius: 1.0,
                    )
                  ]),
              child: Container(
                width: double.infinity,
                height: 300.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage:
                            NetworkImage("${widget.hero.images.lg}"),
                        radius: 70.0,
                      ),
                      _sizedBox(10.0),
                      Text(
                        widget.hero.name,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                      _sizedBox(10.0),
                      Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 10.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Power",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    _sizedBox(5.0),
                                    Text(
                                      widget.hero.powerstats.power.toString(),
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.orange,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Combat",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    _sizedBox(5.0),
                                    Text(
                                      widget.hero.powerstats.combat.toString(),
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.orange,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "Strength",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    _sizedBox(5.0),
                                    Text(
                                      widget.hero.powerstats.strength
                                          .toString(),
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.orange,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(children: [_textOrange("Bio")]),
                  _sizedBox(10.0),
                  _textBold("Place of Birth"),
                  _text(widget.hero.biography.placeOfBirth),
                  _sizedBox(10.0),
                  _textBold("Full name"),
                  _text(widget.hero.biography.fullName),
                  _sizedBox(10.0),
                  _textBold("Alter Egos"),
                  _text(widget.hero.biography.alterEgos),
                  _sizedBox(10.0),
                  _textBold("First Appearance"),
                  _text(widget.hero.biography.firstAppearance),
                  _sizedBox(10.0),
                  _textBold("Publisher Color"),
                  _text(widget.hero.biography.publisher),
                  _sizedBox(10.0),
                  _textBold("Alignment"),
                  _text(widget.hero.biography.alignment),
                  _sizedBox(20.0),
                  _textOrange("Appearance"),
                  _sizedBox(10.0),
                  _textBold("Gender"),
                  _text(widget.hero.appearance.gender),
                  _sizedBox(10.0),
                  _textBold("Race"),
                  _text(widget.hero.appearance.race),
                  _sizedBox(10.0),
                  _textBold("Eye Color"),
                  _text(widget.hero.appearance.eyeColor),
                  _sizedBox(10.0),
                  _textBold("Hair Color"),
                  _text(widget.hero.appearance.hairColor),
                  _sizedBox(20.0),
                  _textOrange("Work"),
                  _sizedBox(10.0),
                  _textBold("Occupation"),
                  _text(widget.hero.work.occupation),
                  _sizedBox(20.0),
                  _textOrange("connections"),
                  _sizedBox(10.0),
                  _textBold("Group Affiliation"),
                  _sizedBox(10.0),
                  _text(widget.hero.connections.groupAffiliation),
                  _sizedBox(10.0),
                  _textBold("Relatives"),
                  _sizedBox(10.0),
                  _text(widget.hero.connections.relatives),
                ],
              ),
            ),
          ),
          _sizedBox(20.0),
        ],
      ),
    ));
  }
}

_textOrange(String text) {
  if (text == null) text = '-';
  return Text(
    text,
    style: TextStyle(
        color: Colors.orange, fontStyle: FontStyle.normal, fontSize: 20.0),
  );
}

_textBold(String text) {
  if (text == null) text = '-';
  return Text(
    text,
    style: TextStyle(
      fontSize: 19.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: Colors.black,
      letterSpacing: 2.0,
    ),
  );
}

_text(String text) {
  if (text == null) text = '-';
  return Text(
    text,
    style: TextStyle(
      fontSize: 19.0,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w300,
      color: Colors.black,
      letterSpacing: 2.0,
    ),
  );
}

_sizedBox(t) {
  return SizedBox(
    height: t,
  );
}
