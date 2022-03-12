import 'package:flutter/material.dart';

import '../misc/colors.dart';
import '../widgets/app_large_text.dart';
import '../widgets/app_text.dart';
import '../widgets/responsive_button.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png", "welcome-two.png", "welcome-three.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/" + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: EdgeInsets.only(top: 150, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(
                            text: 'Mountain',
                            size: 30,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  'Mountin hikes give you incredible sense of freedom along with endurance tests',
                              color: AppColors.textColor2,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          ResponsiveButton(
                            width: 120,
                          ),
                        ],
                      ),
                      Column(
                        children: List.generate(
                            3,
                            (listIndex) => Container(
                              margin: EdgeInsets.only(bottom: 2),
                                  width: 8,
                                  height: index==listIndex?25:8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color:index==listIndex? AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)),
                                )),
                      )
                    ],
                  ),
                ));
          }),
    );
  }
}
