import 'package:flutter/material.dart';
import 'package:tomisha_test/widgets/app_text.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    const textColor = Color.fromRGBO(49, 151, 149, 1);
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(textColor),
        overlayColor:
            MaterialStateProperty.all<Color>(textColor.withOpacity(0.1)),
      ),
      child: const AppText(
        text: 'Login',
        // rgba(49, 151, 149, 1)
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
