import 'package:docdoc/core/helpers/app_regax.dart';
import 'package:docdoc/core/utils/app_strings.dart';
import 'package:docdoc/core/widgets/custom_text_form_field.dart';
import 'package:docdoc/features/login/logic/cubit/login_cubit.dart';
import 'package:docdoc/features/login/presentation/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: AppStrings.email,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please Enter A Valid Email';
              }
            },
          ),
          const SizedBox(
            height: 18,
          ),
          CustomTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please Enter A Valid Password';
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
