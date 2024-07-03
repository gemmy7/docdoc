import 'package:docdoc/core/themes/text_style.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:docdoc/core/widgets/custom_text_button.dart';
import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/presentation/widgets/dont_have_account.dart';
import 'package:docdoc/features/login/presentation/widgets/email_and_password.dart';
import 'package:docdoc/features/login/presentation/widgets/login_bloc_listener.dart';
import 'package:docdoc/features/login/presentation/widgets/terms_and_condations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 94),
              Text(
                AppStrings.welcome,
                style: AppTextStyles.font24BlueBold,
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),
              Text(
                AppStrings.loginHint,
                style: AppTextStyles.font14GrayRegular,
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  const EmailAndPassword(),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(AppStrings.forgotPassword,
                        style: AppTextStyles.font13BlueRegular),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomTextButton(
                      buttonText: AppStrings.login,
                      textStyle: AppTextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateThenLogin(context);
                      }),
                  const SizedBox(
                    height: 40,
                  ),
                  const TermsAndConditionsText(),
                  const SizedBox(
                    height: 60,
                  ),
                  const DontHaveAccountText(),
                  const LoginBlocListener(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
            LoginRequestBody(
                email: context.read<LoginCubit>().emailController.text,
                password: context.read<LoginCubit>().passwordController.text),
          );
    }
  }
}
