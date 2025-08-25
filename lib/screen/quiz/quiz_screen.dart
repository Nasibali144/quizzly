import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/widgets/app_footer.dart';
import 'package:quizzly/core/widgets/purple_outline_button.dart';
import 'package:quizzly/screen/quiz/component/question_card.dart';

import 'component/quiz_bubble_background.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
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

            const Padding(
              padding: AppDimens.pH50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDimens.h80,
                  // question card:
                  QuestionCard(),

                  AppDimens.h60,
                  PurpleOutlineButton(title: "8",),
                  AppDimens.h24,
                  PurpleOutlineButton(title: "5"),
                  AppDimens.h24,
                  PurpleOutlineButton(title: "5"),
                  AppDimens.h24,
                  PurpleOutlineButton(title: "5"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

