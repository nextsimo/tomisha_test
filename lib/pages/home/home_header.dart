import 'package:flutter/material.dart';
import 'package:tomisha_test/widgets/app_text.dart';
import 'package:tomisha_test/widgets/register_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 70),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.02, 0),
          end: Alignment(-1.02, 0),
          colors: [Color(0xFFEBF4FF), Color(0xFFE6FFF9)],
        ),
      ),
      width: double.infinity,
      child: Wrap(
        spacing: 144,
        runSpacing: 144,
        alignment: WrapAlignment.center,
        children: [
          const Column(
            children: [
              SizedBox(
                width: 320,
                child: AppText(
                  text: 'Deine Job website',
                  fontSize: 60,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 65),
              RegisterButton(),
            ],
          ),
          Container(
            width: 455,
            height: 455,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
