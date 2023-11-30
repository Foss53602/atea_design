import 'package:atea_design/color_schemes.g.dart';
import 'package:atea_design/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atea design',
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Cairo',
          useMaterial3: true,
          colorScheme: lightColorScheme),
      darkTheme: ThemeData(
          fontFamily: 'Cairo',
          useMaterial3: true,
          colorScheme: darkColorScheme),
      home: WelcomePage(),
    );
  }
}
