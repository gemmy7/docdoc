import 'package:docdoc/core/themes/text_style.dart';
import 'package:docdoc/core/utils/app_assets.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SvgPicture.asset(AppAssets.docLogo),
          SizedBox(
            width: 10.w,
          ),
          Text(
            AppStrings.appName,
            style: TextStyles.font24BlueBold,
          ),
        ],
      ),
    );
  }
}
