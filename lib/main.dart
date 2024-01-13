import 'package:atea_design/color_schemes.g.dart';
import 'package:atea_design/theme_config.dart';
import 'package:atea_design/welcome_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';

BuildContext? testContext;
var youtubebackground =
    'https://images.unsplash.com/photo-1611162616475-46b635cb6868?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
var ticktokbackground =
    'https://images.unsplash.com/photo-1611605698323-b1e99cfd37ea?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';

ValueNotifier<int> listenableValue = ValueNotifier(6);
AnimationController? cartItemsCountController;

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
          dialogTheme: DialogTheme(backgroundColor: Colors.white, elevation: 0),
          colorScheme: lightColorScheme),
      darkTheme: ThemeData(
          fontFamily: 'Cairo',
          useMaterial3: true,
          dialogTheme: DialogTheme(
              backgroundColor: darkColorScheme.onPrimary, elevation: 0),
          colorScheme: darkColorScheme),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "SY"),
      ],
      locale: Locale("ar", "SY"),
      home: WelcomePage(),
    );
  }
}
