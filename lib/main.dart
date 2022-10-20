import 'package:flutter/material.dart';
import 'package:projects_mobile/ui/pages/detail_page.dart';
import 'package:projects_mobile/ui/pages/home_page.dart';
import 'package:projects_mobile/ui/pages/login_page.dart';
import 'package:projects_mobile/ui/pages/register_page.dart';
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
        primarySwatch: buildMaterialColor(Color.fromARGB(255, 20, 94, 211)),
      ),
      routes: {
        '/': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage()
      },
    );
  }
}
