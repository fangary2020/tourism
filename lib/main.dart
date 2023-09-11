import 'package:flutter/material.dart';
import 'package:tourism/constant/app_name.dart';
import 'package:tourism/views/home/v_home.dart';

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AppName.name,
      debugShowCheckedModeBanner: false,
      home: ViewHome(),
    );
  }
}