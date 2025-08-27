import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/theme/text_styles.dart';

class QuestionCard extends StatelessWidget {
  final int time;
  final String question;
  final String questionNumber;
  final int totalTime;
  const QuestionCard({
    required this.time,
    required this.totalTime,
    required this.question,
    required this.questionNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          surfaceTintColor: AppColors.white,
          color: AppColors.white,
          shape: const RoundedRectangleBorder(borderRadius: AppDimens.br20),
          child: SizedBox(
            height: AppDimens.d200,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppStrings.question(questionNumber), style: AppTextStyles.dmSansMedium22.copyWith(fontSize: AppDimens.d18)),
                AppDimens.h30,
                Text(question, style: AppTextStyles.dmSansMedium20.copyWith(color: AppColors.black)),
                AppDimens.h20,
              ],
            ),
          ),
        ),

        // timer:
        Align(
          alignment: const Alignment(0, -1.4),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: AppDimens.d70,
                width: AppDimens.d70,
                padding: AppDimens.pA5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                ),
                child: CircularProgressIndicator(
                  color: AppColors.deepPurple,
                  value: time / totalTime,
                  strokeAlign: BorderSide.strokeAlignInside,
                ),
              ),
              Text(
                "$time",
                style: AppTextStyles.dmSansBold28.copyWith(fontSize: AppDimens.d20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

