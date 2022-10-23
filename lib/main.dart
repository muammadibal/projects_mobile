import 'package:flutter/material.dart';
import 'package:projects_mobile/ui/pages/detail_page.dart';
import 'package:projects_mobile/ui/pages/home_page.dart';
import 'package:projects_mobile/ui/pages/signin_page.dart';
import 'package:projects_mobile/ui/pages/signup_page.dart';
import 'package:projects_mobile/utils/constants.dart';
import 'package:projects_mobile/utils/conver_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projects',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        primarySwatch: buildMaterialColor(blue),
      ),
      routes: {
        '/': (context) => const SignUpPage(),
        '/login': (context) => const SignInPage(),
        '/home': (context) => const HomePage(),
        '/detail': (context) => const DetailPage()
      },
    );
  }
}
