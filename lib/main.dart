import 'package:flutter/material.dart';
import 'views/home_page_views.dart';

void main() {runApp(const App());}
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "poo",
      debugShowCheckedModeBanner: false,
      home: HomeBage(),
    );
  }
}
