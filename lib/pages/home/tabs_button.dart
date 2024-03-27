import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tomisha_test/provider/home_provider.dart';

class TabsButton extends StatelessWidget {
  final List<String> tabs;
  const TabsButton({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 560.r * tabs.length,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: const Color(0xFFCBD5E0),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            tabs.length,
            (index) => _Item(
              text: tabs[index],
              index: index,
              itemLength: tabs.length,
            ),
          ),
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  final String text;
  final int index;
  final int itemLength;

  const _Item(
      {required this.text, required this.index, required this.itemLength});

  // get border raduis depending on the index
  BorderRadius _getBorderRadius() {
    if (index == 0) {
      return const BorderRadius.horizontal(left: Radius.circular(12));
    } else if (index == itemLength - 1) {
      return const BorderRadius.horizontal(right: Radius.circular(12));
    } else {
      return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.read<HomeProvider>();
    return InkWell(
      onTap: () {
        provider.onTabChanged(index);
      },
      child: Selector<HomeProvider,int>(
          selector: (BuildContext context,HomeProvider provider) => provider.selectedIndex,
          builder: (context, int index, child) {
            final isSelected = index == this.index;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width: 560.r,
              height: 40,
              decoration: BoxDecoration(
                color:
                    isSelected ? const Color(0xFF81E6D9) : Colors.transparent,
                borderRadius: _getBorderRadius(),
              ),
              alignment: Alignment.center,
              child: Text(
                text,
                style: TextStyle(
                  color: isSelected
                      ? const Color(0xFFFFFFFF)
                      : const Color(0xFF319795),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          }),
    );
  }
}
