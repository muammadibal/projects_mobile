import 'package:flutter/material.dart';
import 'package:projects_mobile/ui/widgets/card_featured_job.dart';
import 'package:projects_mobile/ui/widgets/card_projects.dart';
import 'package:projects_mobile/ui/widgets/header_home.dart';
import 'package:projects_mobile/utils/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;
  TextEditingController _searchC = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              bottom: PreferredSize(
                  preferredSize: Size(double.infinity, 250),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeaderHome(),
                        // // Featured
                        Container(
                            margin: EdgeInsets.only(left: 16, right: 16),
                            child: Text('Featured job',
                                style: titleStyle.copyWith(fontSize: 22))),
                        SizedBox(height: 16 / 2),
                        Container(
                          height: 140,
                          margin: EdgeInsets.only(bottom: 16),
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              CardFeaturedJob(),
                              CardFeaturedJob(),
                              CardFeaturedJob(),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: gapSize),
                          child: Text('Find a job',
                              style: titleStyle.copyWith(fontSize: 22)),
                        ),
                      ])),
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              toolbarHeight: 50,
              collapsedHeight: 60,
              snap: true,
              pinned: true,
              floating: true,
              bottom: PreferredSize(
                  preferredSize: Size(double.infinity, 50),
                  child: Container(
                      margin: EdgeInsets.only(left: gapSize, right: gapSize),
                      child: Column(
                        children: [
                          TextField(
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  suffixIcon: Icon(Icons.sort),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              controller: _searchC),
                          SizedBox(
                            height: 16 / 2,
                          ),
                          Row(children: [
                            TextButton(
                              child: Text(
                                'Projects',
                                style: titleStyle.copyWith(color: Colors.black),
                              ),
                              onPressed: () {},
                            ),
                            TextButton(
                              child: Text(
                                'Services',
                                style: titleStyle.copyWith(color: Colors.black),
                              ),
                              onPressed: () {},
                            ),
                            TextButton(
                              child: Text(
                                'Products',
                                style: titleStyle.copyWith(color: Colors.black),
                              ),
                              onPressed: () {},
                            )
                          ]),
                        ],
                      ))),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => CardProject()))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: (int _selectedIndex) {
            setState(() {
              currentIndex = _selectedIndex;
            });
          },
          items: [
            BottomNavigationBarItem(label: '', icon: Icon(Icons.work)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.task_rounded)),
            BottomNavigationBarItem(
                label: '', icon: Icon(Icons.person_outline_rounded))
          ],
        ));
  }
}
