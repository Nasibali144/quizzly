import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/theme/text_styles.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: AppColors.white,
      color: AppColors.white,
      shape: const RoundedRectangleBorder(borderRadius: AppDimens.br20),
      child: Container(
        height: AppDimens.d140,
        width: MediaQuery.sizeOf(context).width,
        padding: AppDimens.pH40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.circle, color: AppColors.green, size: AppDimens.d15),
                    AppDimens.w5,
                    Text("10", style: AppTextStyles.dmSansMedium20.copyWith(color: AppColors.green))
                  ],
                ),
                Padding(
                  padding: AppDimens.pL20,
                  child: Text(
                    AppStrings.correct,
                    style: AppTextStyles.dmSansRecgular16,
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.circle, color: AppColors.red, size: AppDimens.d15),
                    AppDimens.w5,
                    Text("10", style: AppTextStyles.dmSansMedium20.copyWith(color: AppColors.red))
                  ],
                ),
                Padding(
                  padding: AppDimens.pL20,
                  child: Text(
                    AppStrings.wrong,
                    style: AppTextStyles.dmSansRecgular16,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
