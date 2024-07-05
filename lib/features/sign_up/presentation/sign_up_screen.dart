import 'package:docdoc/core/helpers/extensions.dart';
import 'package:docdoc/core/routes/route_constants.dart';
import 'package:docdoc/core/themes/text_style.dart';
import 'package:docdoc/core/widgets/custom_text_button.dart';
import 'package:docdoc/features/login/presentation/widgets/terms_and_condations.dart';
import 'package:docdoc/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:docdoc/features/sign_up/presentation/widgets/already_have_account.dart';
import 'package:docdoc/features/sign_up/presentation/widgets/bloc_listener.dart';
import 'package:docdoc/features/sign_up/presentation/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                Text(
                  'Create Account',
                  style: AppTextStyles.font24BlueBold,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppTextStyles.font14GrayRegular,
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    const SignupForm(),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomTextButton(
                      buttonText: "Create Account",
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                        context.pushReplacementNamed(Routes.homeScreen);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const TermsAndConditionsText(),
                    const SizedBox(
                      height: 30,
                    ),
                    const AlreadyHaveAccount(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
