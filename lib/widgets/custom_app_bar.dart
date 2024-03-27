import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  const CustomAppbar({super.key, this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.16),
            offset: Offset(0, 3),
            blurRadius: 6,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            children: actions,
          ),
        ],
      )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(67);
}
