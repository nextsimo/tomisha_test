import 'package:flutter/material.dart';
import 'package:tomisha_test/app/app_size.dart';

class BottomSheetWidget extends StatelessWidget {
  final Widget? child;
  const BottomSheetWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    if( !context.isMobile) return const SizedBox();
    return Container(
      height: 128,
      padding: const EdgeInsets.only(top: 24),
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0x33000000),
            offset: Offset(0, -1),
            blurRadius: 3,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      alignment: Alignment.topCenter,
      child: child,
    );
  }
}