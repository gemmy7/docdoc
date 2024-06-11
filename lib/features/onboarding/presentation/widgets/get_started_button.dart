import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routes/route_constants.dart';
import 'package:docdoc/core/themes/color.dart';
import 'package:docdoc/core/themes/text_style.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        AppStrings.getStarted,
        style: AppTextStyles.font16WhiteMedium,
      ),
    );
  }
}
