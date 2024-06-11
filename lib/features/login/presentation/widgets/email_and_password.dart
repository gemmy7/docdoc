import 'package:docdoc/core/utils/app_strings.dart';
import 'package:docdoc/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        CustomTextFormField(
          hintText: AppStrings.email,
          validator: (value) {},
        ),
        const SizedBox(
          height: 18,
        ),
        CustomTextFormField(
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
          validator: (value) {},
        ),
      ],
    ));
  }
}
