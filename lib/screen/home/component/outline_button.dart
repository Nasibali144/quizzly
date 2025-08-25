import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/text_styles.dart';

class AppOutlineButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const AppOutlineButton({required this.title, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
            color: AppColors.white,
            width: AppDimens.d3,
          ),
        shape: const RoundedRectangleBorder(
          borderRadius: AppDimens.br16,
        ),
        minimumSize: AppDimens.sizeH60,
      ),
      child: Text(title, style: AppTextStyles.dmSansMedium20),
    );
  }
}