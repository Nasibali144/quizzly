
import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/text_styles.dart';
import 'package:quizzly/screen/quiz/quiz_screen.dart';

class PurpleOutlineButton extends StatelessWidget {
  final AnswerState answerState;
  final void Function()? onPressed;
  final String title;
  const PurpleOutlineButton({
    required this.title,
    this.answerState = AnswerState.none,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: switch(answerState) {
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
      child: Text(title, style: AppTextStyles.dmSansMedium20.copyWith(color: AppColors.black)),
    );
  }
}

