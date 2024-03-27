import 'package:flutter/material.dart';
import 'package:tomisha_test/pages/home/home_header.dart';
import 'package:tomisha_test/widgets/custom_app_bar.dart';
import 'package:tomisha_test/widgets/login_text_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        actions: [LoginTextButton()],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
          ],
        ),
      ),
    );
  }
}
