import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timely_app/core/constant/di/dependency.dart';
import 'package:timely_app/core/widget/loading_app_widget.dart';

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
      home: Scaffold(
        body: LoadingAppWidget(),
      ),
    );
  }
}