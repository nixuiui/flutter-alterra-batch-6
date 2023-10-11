import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_alterra_batch_6/pages/home_page.dart';
import 'package:flutter_alterra_batch_6/pages/profile_page.dart';
import 'package:flutter_alterra_batch_6/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Alterra Batch 6 - Feature 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff517da2),
          primary: const Color(0xff517da2),
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          color: Color(0xff517da2),
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20
          )
        )
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomePage(title: 'Flutter Demo Home Page'),
        'profile': (context) => const ProfilePage(),
        'setting': (context) => const SettingPage(),
      },
    );
  }
}

