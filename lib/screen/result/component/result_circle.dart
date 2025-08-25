import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/theme/text_styles.dart';

class ResultCircle extends StatelessWidget {
  const ResultCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.d180,
      width: AppDimens.d180,
      decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.white24),
      alignment: Alignment.center,
      child: Container(
        height: AppDimens.d150,
        width: AppDimens.d150,
        decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.white30),
        alignment: Alignment.center,
        child: Container(
          height: AppDimens.d120,
          width: AppDimens.d120,
          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppStrings.yourScore,
                style: AppTextStyles.dmSansMedium20.copyWith(color: AppColors.deepPurple),
              ),
              // AppDimens.h
              Text(
                "100",
                style: AppTextStyles.dmSansBold28.copyWith(fontSize: 32),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
