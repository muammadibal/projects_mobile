import 'package:flutter/material.dart';
import 'package:projects_mobile/ui/widgets/button.dart';
import 'package:projects_mobile/utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailC = TextEditingController(text: '');
  TextEditingController _passC = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(
            height: 150,
          ),
          Text(
            'Sign\nIn',
            style: titleStyle.copyWith(fontSize: 50),
          ),
          Text('To step up the journey',
              style: subTitleStyle.copyWith(fontSize: 22)),
          SizedBox(
            height: 16,
          ),
          TextField(
              decoration: InputDecoration(
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
          Button(onPress: () {
            Navigator.pushNamed(context, '/home');
          })
        ],
      ),
    );
  }
}
