import 'package:flutter/material.dart';
import 'package:quizzly/core/route/app_routes.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/theme/text_styles.dart';
import 'package:quizzly/data/data_source.dart';
import 'package:quizzly/screen/home/component/outline_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void goQuizScreen(int index) {
    Navigator.pushNamed(context, AppRoutes.quiz, arguments: index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SafeArea(
        child: Padding(
          padding: AppDimens.pL30T60R30B30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // app name:
              Stack(
                alignment: Alignment.center,
                children: [
                  Text(AppStrings.appName, style: AppTextStyles.expletusSansRegular72),
                  Text(AppStrings.appName, style: AppTextStyles.expletusSansRegular70),
                ],
              ),
              AppDimens.h40,
              // welcome:
              Text(AppStrings.welcome, style: AppTextStyles.dmSansBold28),
              AppDimens.h20,
              Text(AppStrings.appDescription, style: AppTextStyles.dmSansMedium22, textAlign: TextAlign.center),
              AppDimens.h80,

              // choose level:
              Text(AppStrings.chooseLevel, style: AppTextStyles.dmSansBold24),

              // buttons:
              for (int i = 0; i < levels.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppDimens.h30,
                    AppOutlineButton(
                      title: AppStrings.level(i + 1),
                      onPressed: () => goQuizScreen(i),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
