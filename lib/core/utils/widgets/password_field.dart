import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:fruits_e_commerce_app/core/utils/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });
  final Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

bool obscureText = true;

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: context.tr("Password"),
      textInputType: TextInputType.visiblePassword,
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: obscureText
            ? const Icon(
                Icons.remove_red_eye,
                color: Color(0xFFc9cEFF),
              )
            : const Icon(
                Icons.visibility_off,
                color: Color(0xFFc9cEFF),
              ),
      ),
    );
  }
}
