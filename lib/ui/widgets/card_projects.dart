import 'package:flutter/material.dart';
import 'package:projects_mobile/utils/constants.dart';

class CardProject extends StatefulWidget {
  const CardProject({Key? key}) : super(key: key);

  @override
  State<CardProject> createState() => _CardProjectState();
}

class _CardProjectState extends State<CardProject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.only(bottom: gapSize),
      padding: EdgeInsets.all(gapSize),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(radiusSize)),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/detail');
        },
        child: Row(children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/5968/5968705.png'))),
          ),
          SizedBox(
            width: gapSize,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'UI/UX Designer',
                style: titleStyle,
              ),
              Text(
                'Rp. 300.000',
                style: contentTitleStyle,
              )
            ],
          )
        ]),
      ),
    );
  }
}
