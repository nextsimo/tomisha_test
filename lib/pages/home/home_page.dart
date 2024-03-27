import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tomisha_test/pages/home/home_header.dart';
import 'package:tomisha_test/pages/home/tabs_button.dart';
import 'package:tomisha_test/widgets/bottom_sheet_widget.dart';
import 'package:tomisha_test/widgets/custom_app_bar.dart';
import 'package:tomisha_test/widgets/login_text_button.dart';
import 'package:tomisha_test/widgets/register_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppbar(
        actions: [LoginTextButton()],
      ),
      bottomSheet: const BottomSheetWidget(
        child: RegisterButton(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 200),
        child: Column(
          children: [
            const HomeHeader(),
            const SizedBox(height: 35),
            TabsButton(
              tabs: const ['Arbeitnehmer', 'Arbeitgeber', 'Temporärbüro'],
              onTabChanged: (index) {
                debugPrint('index: $index');
              },
            ),
          ],
        ),
      ),
    );
  }
}
