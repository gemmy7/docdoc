import 'package:docdoc/core/themes/text_style.dart';
import 'package:docdoc/core/utils/app_assets.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.docLogo),
        const SizedBox(
          width: 10,
        ),
        Text(
          AppStrings.appName,
          style: AppTextStyles.font24BlueBold,
        ),
      ],
    );
  }
}
