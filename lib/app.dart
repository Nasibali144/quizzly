import 'package:flutter/material.dart';
import 'package:quizzly/core/route/app_routes.dart';

class QuizzlyApp extends StatelessWidget {
  const QuizzlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}