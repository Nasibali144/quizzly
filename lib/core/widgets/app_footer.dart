import 'package:flutter/material.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/theme/text_styles.dart';

class AppFooter extends StatelessWidget {
  final bool showAppName;
  const AppFooter({
    super.key,
    this.showAppName = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: AppDimens.d60,
        decoration: const BoxDecoration(color: AppColors.mainColor, borderRadius: AppDimens.brT40),
        alignment: Alignment.center,
        child: showAppName ? Text(AppStrings.appName, style: AppTextStyles.expletusSansMedium20) : null,
      ),
    );
  }
}