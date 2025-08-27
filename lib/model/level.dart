import 'package:quizzly/model/quiz.dart';

class Level {
  final int time;
  final List<Quiz> questions;

  const Level({
    required this.time,
    required this.questions,
  });
}