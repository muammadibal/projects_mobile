import 'package:flutter/material.dart';
import 'package:projects_mobile/utils/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            'Sign\nUp',
            style: titleStyle.copyWith(fontSize: 50),
          ),
          Text('And find a job', style: subTitleStyle.copyWith(fontSize: 22)),
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
          MaterialButton(
            height: 48,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: Text(
              'Continue',
              style: TextStyle(color: Colors.white),
            ),
          ),
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
                    style: subTitleStyle,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
