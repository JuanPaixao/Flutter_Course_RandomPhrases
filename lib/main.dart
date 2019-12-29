import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeStateful()));
}

class HomeStateful extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeStateful> {
  var randomPhrase = "Clique abaixo para gerar uma frase!";
  int phraseCount = 0;
  var list = [
    "Os problemas são oportunidades para se mostrar o que sabe",
    "Nossos fracassos, às vezes, são mais frutíferos do que os êxitos",
    "Tente de novo, fracasse de novo, mas fracasse melhor",
    "É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo.",
    "O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text("$randomPhrase",
                    style: TextStyle(fontSize: 20, fontFamily: 'Raleway',color: Colors.grey,fontStyle: FontStyle.italic)),
                RaisedButton(
                  child: Text(
                    "Gerar",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Raleway',
                        color: Colors.white),
                  ),
                  onPressed: () {
                    setState(() {
                      phraseCount++;
                      print(phraseCount);
                      if (phraseCount == list.length) {
                           print("a");
                        phraseCount = 0;
                      }
                      randomPhrase = list[phraseCount];
                    });
                  },
                  color: Colors.green,
                )
              ],
            ),
          ),
        ));
  }
}