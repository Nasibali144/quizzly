import 'package:flutter/material.dart';
import 'package:quizzly/core/route/app_routes.dart';
import 'package:quizzly/core/theme/colors.dart';
import 'package:quizzly/core/theme/dimens.dart';
import 'package:quizzly/core/theme/strings.dart';
import 'package:quizzly/core/theme/text_styles.dart';
import 'package:quizzly/screen/home/component/outline_button.dart';
import 'package:quizzly/screen/quiz/quiz_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void goQuizScreen(int level) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const QuizScreen(),
        settings: const RouteSettings(name: AppRoutes.quiz),
      ),
    );
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
              AppDimens.h30,

              // buttons:
              AppOutlineButton(title: AppStrings.level(1), onPressed: () => goQuizScreen(1),),
              AppDimens.h30,
              AppOutlineButton(title: AppStrings.level(2)),
              AppDimens.h30,
              AppOutlineButton(title: AppStrings.level(3)),
            ],
          ),
        ),
      ),
    );
  }
}
