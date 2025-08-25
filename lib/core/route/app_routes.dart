import 'package:flutter/widgets.dart';
import 'package:quizzly/screen/home/home_screen.dart';
import 'package:quizzly/screen/quiz/quiz_screen.dart';
import 'package:quizzly/screen/result/result_screen.dart';

sealed class AppRoutes {
  static const home = "/home";
  static const quiz = "/quiz";
  static const result = "/result";

  static Map<String, WidgetBuilder> routes = {
    home : (context) => const HomeScreen(),
    quiz : (context) => const QuizScreen(),
    result : (context) => const ResultScreen(),
  };
}