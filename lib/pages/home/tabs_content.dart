import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tomisha_test/provider/home_provider.dart';

class TabsContent extends StatelessWidget {
  const TabsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<HomeProvider, int>(
        selector: (context, provider) => provider.selectedIndex,
        builder: (context, selectedIndex, child) {
          return Container(
            width: double.infinity,
            height: 400,
            color: Colors.primaries[selectedIndex].withOpacity(0.5),
          );
        });
  }
}
