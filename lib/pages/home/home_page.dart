import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tomisha_test/pages/home/home_header.dart';
import 'package:tomisha_test/pages/home/tabs_button.dart';
import 'package:tomisha_test/pages/home/tabs_content.dart';
import 'package:tomisha_test/provider/home_provider.dart';
import 'package:tomisha_test/widgets/bottom_sheet_widget.dart';
import 'package:tomisha_test/widgets/custom_app_bar.dart';
import 'package:tomisha_test/widgets/login_text_button.dart';
import 'package:tomisha_test/widgets/register_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context,__) {
        return const _HomePageInner();
      }
    );
  }
}


class _HomePageInner extends StatelessWidget {
  const _HomePageInner();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
          appBar: CustomAppbar(
            actions: [LoginTextButton()],
          ),
          bottomSheet: BottomSheetWidget(
            child: RegisterButton(),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 200),
            child: Column(
              children: [
                HomeHeader(),
                SizedBox(height: 35),
                TabsButton(
                  tabs: ['Arbeitnehmer', 'Arbeitgeber', 'Temporärbüro'],
                ),
                SizedBox(height: 55),
                TabsContent(),
              ],
            ),
          ),
        );
  }
}