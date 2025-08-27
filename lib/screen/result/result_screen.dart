import 'package:flutter/material.dart';
import 'package:quizzly/core/route/app_routes.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/widgets/app_footer.dart';
import 'package:quizzly/core/widgets/purple_outline_button.dart';
import 'package:quizzly/data/data_source.dart';
import 'package:quizzly/screen/result/component/result_bubble_background.dart';
import 'package:quizzly/screen/result/component/result_card.dart';
import 'package:quizzly/screen/result/component/result_circle.dart';

class ResultScreen extends StatefulWidget {
  final int correctAnswerCount;
  final int levelIndex;

  const ResultScreen({
    required this.correctAnswerCount,
    required this.levelIndex,
    super.key,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final level = levels[widget.levelIndex];
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            // white backround:
            Container(decoration: const BoxDecoration(color: AppColors.white)),

            // bubbles background:
            const ResultBubbleBackground(),

            // footer:
            const AppFooter(showAppName: true),

            Padding(
              padding: AppDimens.pH50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDimens.h40,
                  ResultCircle(
                    result: widget.correctAnswerCount * 100 ~/ level.questions.length,
                  ),

                  AppDimens.h40,
                  // question card:
                  ResultCard(
                    correctAnswerCount: widget.correctAnswerCount,
                    wrongAnswerCount: level.questions.length - widget.correctAnswerCount,
                  ),

                  AppDimens.h80,
                  PurpleOutlineButton(
                    title: AppStrings.playAgain,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.quiz, arguments: widget.levelIndex);
                    },
                  ),
                  AppDimens.h30,
                  PurpleOutlineButton(
                    title: AppStrings.home,
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
