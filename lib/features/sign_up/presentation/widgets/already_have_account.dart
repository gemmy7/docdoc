import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routes/route_constants.dart';
import 'package:docdoc/core/themes/text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already Have an Account?',
            style: AppTextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
              text: ' LogIn',
              style: AppTextStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.pushReplacementNamed(Routes.loginScreen);
                }),
        ],
      ),
    );
  }
}
