import 'package:docdoc/core/routes/app_router.dart';
import 'package:docdoc/core/routes/route_constants.dart';
import 'package:docdoc/core/themes/color.dart';
import 'package:flutter/material.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doc App',
      theme: ThemeData(
        primaryColor: AppColors.mainBlue,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingScreen,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
