import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../helper/constants/colors_resources.dart';
import '../../helper/constants/dimentions_resources.dart';
import '../../helper/constants/screen_percentage.dart';
import '../../helper/utills/text_styles.dart';

// ignore: must_be_immutable
class CommonButton extends StatelessWidget {
  String text;
  void Function()? onTap;
  double width;
  bool isloading;
  CommonButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.width,
      required this.isloading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: DimensionsResource.PADDING_SIZE_DEFAULT),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 0.3,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/background_chat.jpg')),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.pink, Colors.purple[900]!]),
              boxShadow: [
                BoxShadow(
                    color: ColorsResources.GREY_COLOR,
                    spreadRadius: 1,
                    blurRadius: 4.5,
                    offset: const Offset(0, 0))
              ],
              borderRadius: BorderRadius.circular(
                  DimensionsResource.RADIUS_EXTRA_LARGE.r)),
          height: MediaQuery.of(context).size.height *
              ScreenPercentage.SCREEN_SIZE_6.h,
          width: width.w,
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(
                DimensionsResource.PADDING_SIZE_EXTRA_SMALL),
            child: isloading
                ? const CircularProgressIndicator.adaptive()
                : Text(text,
                    style: CustomTextStyles.elevatedTextButtonStyle(
                        ColorsResources.WHITE_COLOR)),
          )),
        ),
      ),
    );
  }
}
