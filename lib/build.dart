import 'package:flutter/material.dart';
import 'Screens/00_interface.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budgeteer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFcdf0e4)),
        useMaterial3: true,
      ),
      home: const InterfacePage(),
    );
  }
}
