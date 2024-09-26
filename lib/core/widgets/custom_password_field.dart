import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import 'custom_text_form_field.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: S.of(context).password,
      obscureText: obscureText,
      suffixIcon: IconButton(
        icon: Icon(
          obscureText ? Icons.visibility_off : Icons.visibility,
          color: const Color(0xffC9CECF),
        ),
        onPressed: () {
          obscureText = !obscureText;
          setState(() {});
        },
      ),
      textInputType: TextInputType.visiblePassword,
      onSaved: widget.onSaved,
    );
  }
}
