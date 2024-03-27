import 'package:flutter/material.dart';
import 'package:tomisha_test/widgets/app_text.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [Color(0xFF319795), Color(0xFF3182CE)],
        ),
      ),
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
        child: const AppText(
          text: 'Kostenlos Registrieren',
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFFE6FFFA),
        ),
      ),
    );
  }
}
