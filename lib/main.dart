import 'package:blogapp/core/theme/theme.dart';
import 'package:blogapp/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog App',
      theme: AppTheme.darkThemeMde,
      home: const LoginPage(),
    );
  }
}
