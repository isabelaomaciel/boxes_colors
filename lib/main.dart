import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Boxes'),
          ),
          body:
          ListView(
      children: const [
      Padding(
      padding: EdgeInsets.only(top: 8),
      ),
              Flag(
          Colors.black,
          Colors.pinkAccent,
          Colors.lightBlueAccent,
          100,
        ),
        Flag(
          Colors.yellow,
          Colors.greenAccent,
          Colors.deepOrangeAccent,
          100,
        ),
        Flag(
          Colors.blueGrey,
          Colors.brown,
          Colors.redAccent,
          100,
        ),
        Flag(
          Colors.grey,
          Colors.orange,
          Colors.red,
          100,
        ),

    ],




    ),

    )
    ,
    );
  }
}

class Flag extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final double largura;

  const Flag(this.cor1, this.cor2, this.cor3, this.largura, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 140,
                width: largura,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  color: cor1,
                ),
              ),
              Container(
                height: 140,
                width: largura,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: cor2,
                ),
              ),
              Container(
                height: 140,
                width: largura,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: cor3,
                ),
              ),
            ],
          ),
        ),
    );
  }
}
