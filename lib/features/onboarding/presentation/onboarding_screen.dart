import 'package:docdoc/core/themes/text_style.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:docdoc/features/onboarding/presentation/widgets/doc_logo_and_name.dart';
import 'package:docdoc/features/onboarding/presentation/widgets/get_started_button.dart';
import 'package:docdoc/features/onboarding/presentation/widgets/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 30),
            child: Column(
              children: [
                const DocLogoAndName(),
                const SizedBox(height: 30),
                const OnboardingContent(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        AppStrings.onboardingHint,
                        style: AppTextStyles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      const GetStartedButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
