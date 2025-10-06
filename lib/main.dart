import 'package:flutter/material.dart';

import './pages/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "#HannahMontana",
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF3c096c)),
      home: HomePage(),
    );
  }
}
