import 'package:flutter/material.dart';
import 'package:travel/widgets/app_text.dart';

import '../misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({Key? key,this.isResponsive=false,this.width=120}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: isResponsive==true?EdgeInsets.symmetric(vertical: 0,horizontal: 20):EdgeInsets.all(0),
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?AppText(text: 'Book Trip Now',color: Colors.white,):Container(),
            Image.asset('img/button-one.png'),
          ],
        ),
      ),
    );
  }
}
