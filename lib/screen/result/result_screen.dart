import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/widgets/app_footer.dart';
import 'package:quizzly/core/widgets/purple_outline_button.dart';
import 'package:quizzly/screen/result/component/result_bubble_background.dart';
import 'package:quizzly/screen/result/component/result_card.dart';
import 'package:quizzly/screen/result/component/result_circle.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
            const ResultBubbleBackground(),

            // footer:
            const AppFooter(showAppName: true),

            const Padding(
              padding: AppDimens.pH50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppDimens.h40,
                  ResultCircle(),

                  AppDimens.h40,
                  // question card:
                  ResultCard(),

                  AppDimens.h80,
                  PurpleOutlineButton(title: AppStrings.playAgain),
                  AppDimens.h30,
                  PurpleOutlineButton(title: AppStrings.home),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}