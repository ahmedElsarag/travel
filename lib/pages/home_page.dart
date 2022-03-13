import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/app_large_text.dart';
import 'package:travel/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "balloning.png": "Balloning",
    "hiking.png": "Hiking",
    "kayaking.png": "Kayaking",
    "snorkling.png": "Snorkling",
  };

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.menu,
                  color: Colors.black54,
                  size: 30,
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(.5)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLargeText(text: 'Discover'),
          ),
          SizedBox(
            height: 40,
          ),
          //tab bar
          Container(
            child: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              // if false the tabs will stretch to fill width beside not scrolling
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: AppColors.mainColor,
              controller: _tabController,
              tabs: [
                Tab(
                  text: 'Places',
                ),
                Tab(
                  text: 'Inspiration',
                ),
                Tab(
                  text: 'Emotions',
                ),
              ],
            ),
          ),
          //tab bar view
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 200,
                    height: 300,
                    margin: EdgeInsets.only(top: 10, left: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('img/mountain.jpeg'),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
              Text('ther'),
              Text('bye'),
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Row(
              children: [
                AppLargeText(
                  text: 'Explore more',
                  size: 20,
                ),
                Expanded(child: Container()),
                AppText(text: "See All"),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.mainColor.withOpacity(0.7),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'img/' + images.keys.elementAt(index)
                                  ),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),

                      ],
                    ),
                  );
                }),
          ),
      ],
    ),
        ));
  }
}
