import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:projects_mobile/ui/widgets/card_featured_job.dart';
import 'package:projects_mobile/ui/widgets/card_projects.dart';
import 'package:projects_mobile/ui/widgets/header_home.dart';
import 'package:projects_mobile/utils/constants.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  GlobalKey<FormState> tabbarKey =
      GlobalKey<FormState>(debugLabel: 'tabbarKey');
  final StickyHeaderController _scrollHeaderC = StickyHeaderController();
  final TextEditingController _searchC = TextEditingController(text: '');
  var currentIndex = 0;
  var currentTabbarIndex = 0;

  late FocusNode _searchFocus;
  late TabController _tabViewC;

  static const List<Tab> myTabs = [
    Tab(text: 'Projects'),
    Tab(text: 'Services'),
    Tab(text: 'Products'),
  ];

  @override
  void initState() {
    _tabViewC = TabController(length: myTabs.length, vsync: this);
    _searchFocus = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _tabViewC.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget buildAnimatedHeader(state) {
    return Material(
      elevation: state!.isPinned ? 5 : 0,
      child: Container(
        decoration:
            BoxDecoration(color: state!.isPinned ? Colors.white : bgColor),
        padding: EdgeInsets.only(left: gapSize, right: gapSize, top: gapSize),
        child: Column(
          children: [
            TextField(
                focusNode: _searchFocus,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: const Icon(Icons.sort),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                controller: _searchC),
            DefaultTabController(
                initialIndex: currentTabbarIndex,
                length: 3,
                child: TabBar(
                    onTap: (index) {
                      setState(() {
                        currentTabbarIndex = index;
                      });
                    },
                    tabs: myTabs
                        .asMap()
                        .entries
                        .map((e) => Tab(
                                child: Text(
                              e.value.text.toString(),
                              style: subTitleStyle.copyWith(
                                  color: e.key == currentTabbarIndex
                                      ? blue
                                      : grey),
                            )))
                        .toList())),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: () => _searchFocus.unfocus(),
          child: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverStickyHeader(
                  sticky: false,
                  header: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeaderHome(),
                      Container(
                          margin: const EdgeInsets.only(left: 16, right: 16),
                          child: Text('Featured job',
                              style: titleStyle.copyWith(fontSize: 22))),
                      const SizedBox(height: 16 / 2),
                      Container(
                        height: 190,
                        margin: const EdgeInsets.only(bottom: 16),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: const [
                            CardFeaturedJob(),
                            CardFeaturedJob(),
                            CardFeaturedJob(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SliverStickyHeader.builder(
                  controller: _scrollHeaderC,
                  builder: (context, state) => buildAnimatedHeader(state),
                  sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                    return Container(
                        margin: EdgeInsets.only(
                            left: gapSize,
                            right: gapSize,
                            top: index == 0 ? gapSize : 0),
                        child: CardProject(index: index));
                  },
                          childCount: currentTabbarIndex == 0
                              ? 3
                              : currentTabbarIndex == 1
                                  ? 10
                                  : 5)),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          onTap: (int _selectedIndex) {
            setState(() {
              currentIndex = _selectedIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(label: '', icon: Icon(Icons.work)),
            BottomNavigationBarItem(label: '', icon: Icon(Icons.task_rounded)),
            BottomNavigationBarItem(
                label: '', icon: Icon(Icons.person_outline_rounded))
          ],
        ));
  }
}
