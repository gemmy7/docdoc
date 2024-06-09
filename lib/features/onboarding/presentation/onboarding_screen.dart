import 'package:docdoc/core/themes/text_style.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:docdoc/features/onboarding/presentation/widgets/doc_logo_and_name.dart';
import 'package:docdoc/features/onboarding/presentation/widgets/get_started_button.dart';
import 'package:docdoc/features/onboarding/presentation/widgets/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0.w, bottom: 30.0.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 30.h),
              const OnboardingContent(),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    Text(
                      AppStrings.onboardingHint,
                      style: TextStyles.font13GrayRegular,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Find the best doctor for your health',
                      style: TextStyle(fontSize: 16.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 30.h),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
