import 'package:flutter/material.dart';
import 'package:parking/screens/habit_new/habit_new.dart';
import 'package:parking/screens/home/home.dart';
import 'package:parking/screens/meditacao/meditacao.dart';
import 'package:parking/screens/new_habit/new_habit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caminho Sereno',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const HomePage(),
        'new_habit': (context) => NewHabit(),
        'habit_new': (context) => NewHabitForm(),
        'meditacao': (context) => Meditacao(),
      },
    );
  }
}
