import 'package:flutter/material.dart';
import 'package:local_film_festival/bottomnavigation.dart';
import 'package:local_film_festival/events.dart';
import 'package:local_film_festival/homepage.dart';
import 'package:local_film_festival/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
          useMaterial3: true,
        ),
        home: LoginScreen()
    );
  }
}
