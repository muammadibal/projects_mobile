import 'package:flutter/material.dart';
import 'package:projects_mobile/ui/widgets/button.dart';
import 'package:projects_mobile/utils/constants.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(children: [
            Stack(
              children: [
                Hero(
                    tag: 'imgDetail-1',
                    child: Container(
                      height: 250,
                      margin: EdgeInsets.only(
                          left: gapSize,
                          right: gapSize,
                          top: gapSize,
                          bottom: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(gapSize),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1664575197229-3bbebc281874?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'))),
                    )),
                Positioned(
                    left: 30,
                    top: 2 * gapSize,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                    )),
                Positioned(
                    right: 30,
                    top: 2 * gapSize,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite),
                      ),
                    )),
                Positioned(
                  left: (MediaQuery.of(context).size.width / 2) - 40,
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1666207482115-53756be8a995?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                    radius: 40,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: gapSize),
              child: Column(children: [
                Text(
                  'Sr. UI/UX',
                  style: titleStyle,
                ),
                Text('Remote, Jakarta Selatan', style: contentTitleStyle)
              ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: gapSize),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Overview',
                      style: titleStyle,
                    ),
                    Text(
                        'Irure nostrud enim et eiusmod elit sit adipisicing ea Lorem esse dolore exercitation. Id minim adipisicing Lorem aliqua cupidatat velit ea aute qui do nostrud. Aliqua occaecat nostrud exercitation sunt consectetur nisi nulla laboris sint est amet ad adipisicing. Irure sit in dolor occaecat et velit mollit irure est reprehenderit incididunt laboris do. \n\nEa reprehenderit exercitation dolore cupidatat est voluptate fugiat. Sint anim nostrud voluptate nisi in pariatur dolore enim exercitation eu. Voluptate incididunt nostrud magna pariatur cupidatat veniam esse. Fugiat fugiat qui laboris incididunt duis esse consectetur deserunt consectetur. \n\n,Nostrud elit cillum ea proident anim velit ullamco. Nostrud ut Lorem nostrud anim id proident nostrud nisi ex deserunt minim non. Eu amet quis irure elit est tempor ut quis laborum. Magna incididunt est dolore ipsum aliqua qui eu laboris Lorem aute ad aliquip ullamco id. Ad veniam minim irure duis elit irure reprehenderit. Id adipisicing velit esse laborum deserunt laboris commodo nisi proident pariatur.',
                        style: subTitleStyle),
                  ]),
            ),
            SizedBox(
              height: 100,
            )
          ]),
          Positioned(
            bottom: gapSize,
            left: 0,
            right: 0,
            child: Container(
                margin: EdgeInsets.only(
                    left: gapSize, right: gapSize, top: gapSize),
                child: Button(
                  title: "Continue",
                  onPress: () {
                    Navigator.pop(context);
                  },
                )),
          ),
        ],
      ),
    );
  }
}
