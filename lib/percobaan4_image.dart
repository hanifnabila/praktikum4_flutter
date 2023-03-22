import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
            children: <Widget> [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  Image.asset('assets/images/submarine.jpg'),
                  Container(
                      margin: const EdgeInsets.only(top: 16.0),
                      child: const Text(
                        "Surabaya Submarine Monument",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: const <Widget> [
                            Icon(Icons.calendar_today),
                            Text('Open Everyday'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        "Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0,
                        ),
                      )
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.network(
                              'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/submarine.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/submarine.jpg'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset('assets/images/submarine.jpg'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}
