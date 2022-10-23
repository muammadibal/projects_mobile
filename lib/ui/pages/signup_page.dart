import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projects_mobile/ui/widgets/button.dart';
import 'package:projects_mobile/utils/constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final Widget accentImage = SvgPicture.asset(
    'lib/assets/accent.svg',
    semanticsLabel: 'Accent Image',
    width: 50,
    height: 300,
  );

  final TextEditingController _emailC = TextEditingController(text: '');
  final TextEditingController _passC = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -50,
            top: 20,
            child: Opacity(opacity: 0.4, child: accentImage),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: gapSize),
            children: [
              const SizedBox(
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
                height: gapSize,
              ),
              TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: bgColor,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: 'Email',
                      labelStyle: subTitleStyle,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: gapSize, vertical: gapSize),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  controller: _emailC),
              SizedBox(
                height: gapSize,
              ),
              TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: bgColor,
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: 'Password',
                      labelStyle: subTitleStyle,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: gapSize, vertical: gapSize),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  controller: _passC),
              SizedBox(
                height: gapSize,
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
