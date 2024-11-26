import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timely_app/app/presentation/login/login_screen.dart';
import 'package:timely_app/core/di/dependency.dart';
import 'package:timely_app/core/widget/error_app_widget.dart';

void main() async {
  await initializeDateFormatting('id', null);
  await initDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
        ),
      ),
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
