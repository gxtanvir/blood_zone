import 'package:blood_zone/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 108, 215, 111),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Blood Zone',
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primary,
            foregroundColor: kColorScheme.onPrimary,
          ),),),
      home: const StartScreen(),
    );
  }
}
