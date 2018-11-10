import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(primarySwatch: Colors.yellow),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int skor = 0;
  int skor2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skoring Basket"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(skor.toString()),
                    RaisedButton(
                      child: Text('Tambah 1'),
                      color: Colors.yellow,
                      onPressed: () {
                        setState(() {
                          skor++;
                        });
                      },
                    ),
                    RaisedButton(
                      child: Text('Tambah 2'),
                      color: Colors.yellow,
                      onPressed: () {
                        setState(() {
                          skor += 2;
                        });
                      },
                    ),
                    RaisedButton(
                      child: Text('Tambah 3'),
                      color: Colors.yellow,
                      onPressed: () {
                        setState(() {
                          skor += 3;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(skor2.toString()),
                    RaisedButton(
                      child: Text('Tambah 1'),
                      color: Colors.yellow,
                      onPressed: () {
                        setState(() {
                          skor2++;
                        });
                      },
                    ),
                    RaisedButton(
                      child: Text('Tambah 2'),
                      color: Colors.yellow,
                      onPressed: () {
                        setState(() {
                          skor2 += 2;
                        });
                      },
                    ),
                    RaisedButton(
                      child: Text('Tambah 3'),
                      color: Colors.yellow,
                      onPressed: () {
                        setState(() {
                          skor2 += 3;
                        });
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
          RaisedButton(
            child: Icon(Icons.refresh),
            color: Colors.yellow,
            onPressed: () {
              setState(() {
                skor = 0;
                skor2 = 0;
              });
            },
          )
        ],
      ),
    );
  }
}
