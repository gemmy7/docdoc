import 'package:docdoc/core/routes/route_constants.dart';
import 'package:docdoc/features/home/presentation/home_screen.dart';
import 'package:docdoc/features/login/presentation/login_screen.dart';
import 'package:docdoc/features/onboarding/presentation/onboarding_screen.dart';
import 'package:docdoc/features/sign_up/presentation/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
