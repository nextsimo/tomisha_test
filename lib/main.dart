import 'package:flutter/material.dart';
import 'package:tomisha_test/app/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: AppRoutes.routes,
    );
  }
}
