import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tomisha_test/app/app_size.dart';
import 'package:tomisha_test/app/conts.dart';
import 'package:tomisha_test/widgets/app_text.dart';
import 'package:tomisha_test/widgets/register_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('isMobile: ${context.isMobile}');
    return Container(
      padding: EdgeInsets.symmetric(vertical: context.isMobile ? 80.w : 160.w),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.02, 0),
          end: Alignment(-1.02, 0),
          colors: [Color(0xFFEBF4FF), Color(0xFFE6FFF9)],
        ),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Wrap(
            spacing: 144.w,
            runSpacing: 144.w,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    width: 340,
                    child: Center(
                      child: AppText(
                        text: 'Deine Job website',
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.26,
                        color: Color(0xFF2D3748),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  if (!context.isMobile)
                    const Column(
                      children: [
                        SizedBox(height: 65),
                        RegisterButton(),
                      ],
                    ),
                ],
              ),
              if (!context.isMobile)
                SizedBox(
                  width: 500.dm,
                  height: 500.dm,
                  child: Stack(
                    children: [
                      Container(
                        width: 500.dm,
                        height: 500.dm,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(1000.dm),
                        child: SvgPicture.asset(
                          Consts.homeHeaderSvgWeb,

                        ),
                      )
                    ],
                  ),
                ),
            ],
          ),
          if (context.isMobile)
            SvgPicture.asset(
              Consts.homeHeaderSvg,
              width: 1.sw,
            ),
        ],
      ),
    );
  }
}
