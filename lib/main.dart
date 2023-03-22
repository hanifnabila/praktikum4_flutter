import 'package:flutter/material.dart';
import 'package:layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';
import 'detail_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contact',
        theme: ThemeData(),
        home: MainScreen(),
      ),
    );
  }
}