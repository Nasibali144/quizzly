import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';

class QuizBubbleBackground extends StatelessWidget {
  const QuizBubbleBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 4,
      decoration: const BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: AppDimens.brB40
      ),
      child: Stack(
        children: [
          Align(
            alignment: const Alignment(-1.1, 0.25),
            child: Container(
              height: AppDimens.d100,
              width: AppDimens.d100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white30
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.25, -2),
            child: Container(
              height: AppDimens.d100,
              width: AppDimens.d100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white30
              ),
            ),
          ),
    
          Align(
            alignment: const Alignment(0.4, -1.0),
            child: Container(
              height: AppDimens.d50,
              width: AppDimens.d50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white30
              ),
            ),
          ),
        ],
      ),
    );
  }
}
