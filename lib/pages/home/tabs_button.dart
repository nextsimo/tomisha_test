import 'package:flutter/material.dart';

class TabsButton extends StatefulWidget {
  final List<String> tabs;
  final void Function(int) onTabChanged;
  const TabsButton({super.key, required this.tabs, required this.onTabChanged});

  @override
  State<TabsButton> createState() => _TabsButtonState();
}

class _TabsButtonState extends State<TabsButton> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160.0 * widget.tabs.length,
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
            widget.tabs.length,
            (index) => _Item(
              isSelected: _selectedIndex == index,
              text: widget.tabs[index],
              index: index,
              itemLength: widget.tabs.length,
              onPressed: () {
                widget.onTabChanged(index);
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _Item extends StatelessWidget {
  final bool isSelected;
  final String text;
  final int index;
  final int itemLength;
  final VoidCallback onPressed;

  const _Item(
      {required this.isSelected,
      required this.text,
      required this.index,
      required this.itemLength,
      required this.onPressed});

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
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 160,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF81E6D9) : Colors.transparent,
          borderRadius: _getBorderRadius(),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color:
                isSelected ? const Color(0xFFFFFFFF) : const Color(0xFF319795),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
