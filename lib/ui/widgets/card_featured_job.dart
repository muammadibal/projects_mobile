import 'package:flutter/material.dart';
import 'package:projects_mobile/utils/constants.dart';

class CardFeaturedJob extends StatefulWidget {
  const CardFeaturedJob({Key? key}) : super(key: key);

  @override
  State<CardFeaturedJob> createState() => _CardFeaturedJobState();
}

class _CardFeaturedJobState extends State<CardFeaturedJob> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(gapSize),
      margin: EdgeInsets.only(left: gapSize),
      width: MediaQuery.of(context).size.width - 2 * gapSize,
      decoration: BoxDecoration(
          color: Colors.blue.shade500, borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1666207482115-53756be8a995?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'))),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('UX Research',
                      style: titleStyle.copyWith(color: Colors.white)),
                  Text('Jakarta Selatan',
                      style: contentTitleStyle.copyWith(color: Colors.white))
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(Icons.bookmark_border, color: Colors.white),
            )
          ],
        ),
        SizedBox(height: 16),
        Wrap(
          children: [
            Container(
                padding: EdgeInsets.all(16 / 2),
                margin: EdgeInsets.only(right: 16 / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16 / 2)),
                child: Text(
                  'Fulltime',
                  style: subTitleStyle,
                )),
            Container(
                padding: EdgeInsets.all(16 / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16 / 2)),
                child: Text(
                  'Senior',
                  style: subTitleStyle,
                ))
          ],
        )
      ]),
    );
  }
}
