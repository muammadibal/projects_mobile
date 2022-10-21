import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects_mobile/ui/widgets/button.dart';
import 'package:projects_mobile/utils/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final Widget accentImage = SvgPicture.asset(
    'lib/assets/accent.svg',
    semanticsLabel: 'Accent Image',
    width: 100,
    height: 600,
  );

  TextEditingController _emailC = TextEditingController(text: '');
  TextEditingController _passC = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Opacity(opacity: 0.4, child: accentImage),
          ),
          Positioned(
            left: 0,
            bottom: -300,
            child: Opacity(opacity: 0.4, child: accentImage),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: [
              SizedBox(
                height: 150,
              ),
              Text(
                'Sign\nUp',
                style: titleStyle.copyWith(
                    fontSize: 50, fontWeight: FontWeight.w900),
              ),
              Text('And find a job',
                  style: subTitleStyle.copyWith(fontSize: 22)),
              SizedBox(
                height: 16,
              ),
              TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: bgColor,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: 'Email',
                      labelStyle: subTitleStyle,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  controller: _emailC),
              SizedBox(
                height: 16,
              ),
              TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: bgColor,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: 'Password',
                      labelStyle: subTitleStyle,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  controller: _passC),
              SizedBox(
                height: 16,
              ),
              Button(
                  title: "Continue",
                  onPress: () {
                    Navigator.pushNamed(context, '/home');
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: subTitleStyle,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Sign In',
                        style: subTitleStyle.copyWith(color: blue),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
