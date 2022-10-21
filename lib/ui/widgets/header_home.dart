import 'package:flutter/material.dart';
import 'package:projects_mobile/utils/constants.dart';

class HeaderHome extends StatefulWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  State<HeaderHome> createState() => _HeaderHomeState();
}

class _HeaderHomeState extends State<HeaderHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Row(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1666207482115-53756be8a995?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
          radius: 25,
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'JK Rowling',
                style: titleStyle,
              ),
              Text('Quality Assurance', style: subTitleStyle),
            ],
          ),
        ),
        IconButton(
            iconSize: 24,
            onPressed: () {},
            icon: Icon(Icons.notifications_none))
      ]),
    );
  }
}
