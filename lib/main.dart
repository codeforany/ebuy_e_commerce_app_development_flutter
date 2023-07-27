import 'package:ebuy_ecommerce/common/color_extension.dart';
import 'package:ebuy_ecommerce/view/main_tab/main_tabview.dart';
import 'package:ebuy_ecommerce/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EBuy ECommerce',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
       fontFamily: "San Francisco Display",
        colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
        useMaterial3: false,
      ),
      home: const MainTabView(),
    );
  }
}

