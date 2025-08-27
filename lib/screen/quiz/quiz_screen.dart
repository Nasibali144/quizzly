import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizzly/core/route/app_routes.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/text_styles.dart';
import 'package:quizzly/core/widgets/app_footer.dart';
import 'package:quizzly/data/data_source.dart';
import 'package:quizzly/model/level.dart';
import 'package:quizzly/model/quiz.dart';
import 'package:quizzly/screen/quiz/component/question_card.dart';

import 'component/quiz_bubble_background.dart';

class QuizScreen extends StatefulWidget {
  final int index;
  const QuizScreen({required this.index, super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuizIndex = 0;
  int tick = 20;
  int correctAnswerCount = 0;

  late Level level;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), timeManager);
    level = levels[widget.index];
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void timeManager(Timer value) {
    if (tick > 0) {
      tick--;
    } else {
      if (currentQuizIndex < level.questions.length - 1) {
        currentQuizIndex++;
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.result, arguments: [correctAnswerCount, widget.index]);
        return;
      }
      tick = 20;
    }

    setState(() {});
  }

  void checkAnswer(int variant) {
    Timer(const Duration(milliseconds: 500), () {
      if (level.questions[currentQuizIndex].correctVariant == variant) {
        correctAnswerCount++;
      }
      if (currentQuizIndex < level.questions.length - 1) {
        currentQuizIndex++;
      } else {
        Navigator.pushReplacementNamed(context, AppRoutes.result, arguments: [correctAnswerCount, widget.index]);
      }
      tick = 20;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // white backround:
            Container(decoration: const BoxDecoration(color: AppColors.white)),

            // bubbles background:
            const QuizBubbleBackground(),

            // footer:
            const AppFooter(),

            Padding(
              padding: AppDimens.pH50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDimens.h80,
                  // question card:
                  QuestionCard(
                    time: tick,
                    totalTime: 20,
                    question: level.questions[currentQuizIndex].question,
                    questionNumber: "${currentQuizIndex + 1} / ${level.questions.length}",
                  ),

                  AppDimens.h60,

                  ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (_, i) => VariantButton(
                      index: i,
                      quiz: level.questions[currentQuizIndex],
                      onPressed: () => checkAnswer(level.questions[currentQuizIndex].variant[i]),
                    ),
                    separatorBuilder: (_, i) => AppDimens.h24,
                    itemCount: level.questions[currentQuizIndex].variant.length,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VariantButton extends StatefulWidget {
  final void Function()? onPressed;
  final Quiz quiz;
  final int index;
  const VariantButton({
    required this.quiz,
    required this.index,
    this.onPressed,
    super.key,
  });

  @override
  State<VariantButton> createState() => _VariantButtonState();
}

class _VariantButtonState extends State<VariantButton> {
  late AnswerState answerState;

  @override
  void initState() {
    super.initState();
    answerState = AnswerState.none;
  }

  @override
  void didUpdateWidget(covariant VariantButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    answerState = AnswerState.none;
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        if (widget.quiz.variant[widget.index] == widget.quiz.correctVariant) {
          answerState = AnswerState.correct;
        } else {
          answerState = AnswerState.wrong;
        }
        widget.onPressed?.call();
        setState(() {});
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: switch (answerState) {
          AnswerState.none => AppColors.white,
          AnswerState.wrong => AppColors.red,
          AnswerState.correct => AppColors.green,
        },
        side: const BorderSide(
          color: AppColors.deepPurple,
          width: AppDimens.d2,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: AppDimens.br16,
        ),
        minimumSize: AppDimens.sizeH60,
      ),
      child: Text("${widget.quiz.variant[widget.index]}", style: AppTextStyles.dmSansMedium20.copyWith(color: AppColors.black)),
    );
  }
}

enum AnswerState {
  none,
  wrong,
  correct,
}
