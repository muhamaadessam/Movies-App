import 'package:flutter/material.dart';
import 'package:movies/Core/Services/service_locator.dart';
import 'Movies/presentation/screens/movies_screen.dart';

void main() async {
  ServicesLocator().inti();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoviesApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade900,
        primarySwatch: Colors.blue,
      ),
      home: const MoviesScreen(),
    );
  }
}
