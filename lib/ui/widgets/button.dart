import 'package:flutter/material.dart';
import 'package:projects_mobile/utils/constants.dart';

class Button extends StatelessWidget {
  final String title;
  final bool isPrimary;
  final bool isLoading;
  final Function() onPress;
  const Button({
    Key? key,
    required this.onPress,
    this.title = "Title",
    this.isPrimary = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Container(
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: blue),
            child: Center(
                child: SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator.adaptive(
                backgroundColor: lightGrey100,
                strokeWidth: 3,
              ),
            )),
          )
        : MaterialButton(
            height: 48,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: isPrimary ? blue : lightGrey100,
            onPressed: onPress,
            child: Text(
              title,
              style: subTitleStyle.copyWith(
                  color: isPrimary ? lightGrey100 : black),
            ),
          );
  }
}
