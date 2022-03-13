import 'dart:html';

import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/app_large_text.dart';
import 'package:travel/widgets/app_text.dart';
import 'package:travel/widgets/responsive_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/mountain.jpeg'),
                      fit: BoxFit.cover)),
            )),
            Positioned(
              left: 20,
              height: 50,
              child: Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 240,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              AppLargeText(
                                text: 'Yosemite',
                                color: Colors.black.withOpacity(.9),
                              ),
                              Spacer(),
                              AppLargeText(
                                text: '\$ 250',
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          //location
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 16),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.black.withOpacity(.7),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 8),
                                  child: AppText(
                                    text: 'USA,California',
                                    size: 14,
                                  ),
                                )
                              ],
                            ),
                          ),
                          //stars
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Icon(
                                    index < 4
                                        ? Icons.star
                                        : Icons.star_border_outlined,
                                    color: index < 4
                                        ? AppColors.starColor
                                        : Colors.grey)),
                          ),
                          SizedBox(height: 30),
                          AppLargeText(
                            text: 'People',
                            size: 16,
                            color: Colors.black.withOpacity(.8),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AppText(
                            text: 'Number of people in your group',
                            color: Colors.grey.withOpacity(.7),
                            size: 14,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //group numbers
                          Wrap(
                            children: List.generate(
                                5,
                                (index) => Container(
                                    width: 60,
                                    height: 60,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: AppColors.mainColor
                                            .withOpacity(.3)),
                                    child: AppLargeText(
                                      text: '$index',
                                      size: 16,
                                      color: Colors.black.withOpacity(.7),
                                    ))),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //description
                          AppLargeText(
                            text: 'Description',
                            size: 16,
                            color: Colors.black.withOpacity(.8),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          AppText(
                            text:
                                'Yosemite park located in center siera navadia in the US state'
                                'of California. It is located near the wild protected areas',
                            size: 14,
                          ),
                          SizedBox(height: 100,)
                        ],
                      ),
                    ),
                  ),
                )),
            //buttons
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(right: 8),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.mainColor,width: 1.0),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.favorite_border,color: AppColors.mainColor,),
                  ),
                  ResponsiveButton(isResponsive: true,)

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
