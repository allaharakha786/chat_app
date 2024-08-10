import 'package:chat_app/helper/constants/colors_resources.dart';
import 'package:chat_app/helper/constants/dimentions_resources.dart';
import 'package:chat_app/helper/constants/screen_percentage.dart';
import 'package:chat_app/helper/utills/text_styles.dart';
import 'package:chat_app/presentation/screens/login_screen.dart';
import 'package:chat_app/presentation/widgets/common_button.dart';
import 'package:chat_app/presentation/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            height: mediaQuerySize.height.h,
            width: mediaQuerySize.width.w,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.pink, Colors.purple[900]!]),
                image: const DecorationImage(
                    opacity: 0.3,
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/background_chat.jpg'))),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: mediaQuerySize.height *
                          ScreenPercentage.SCREEN_SIZE_3.h,
                      top: mediaQuerySize.height *
                          ScreenPercentage.SCREEN_SIZE_3.w),
                  child: Text(
                    'Create Your\nAccount',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                            DimensionsResource.RADIUS_2X_EXTRA_LARGE.r),
                        topRight: Radius.circular(
                            DimensionsResource.RADIUS_2X_EXTRA_LARGE.r)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(mediaQuerySize.height *
                        ScreenPercentage.SCREEN_SIZE_2.h),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: mediaQuerySize.height *
                                ScreenPercentage.SCREEN_SIZE_6.h,
                          ),
                          CommonTextField(
                            isBorderSide: true,
                            title: 'Name',
                            hintText: 'Hello',
                          ),
                          SizedBox(
                            height: mediaQuerySize.height *
                                ScreenPercentage.SCREEN_SIZE_1.h,
                          ),
                          CommonTextField(
                            isBorderSide: true,
                            title: 'Email',
                            hintText: 'Please Enter your email',
                            isSuffix: true,
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: ColorsResources.BLACK_54,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuerySize.height *
                                ScreenPercentage.SCREEN_SIZE_1.h,
                          ),
                          CommonTextField(
                            isBorderSide: true,
                            title: 'Password',
                            hintText: 'Please Enter your password',
                            isSuffix: true,
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: ColorsResources.BLACK_54,
                            ),
                          ),
                          SizedBox(
                            height: mediaQuerySize.height *
                                ScreenPercentage.SCREEN_SIZE_3.h,
                          ),
                          CommonButton(
                              text: 'Sign Up',
                              onTap: () {},
                              width: mediaQuerySize.width *
                                  ScreenPercentage.SCREEN_SIZE_100.w,
                              isloading: false),
                          const Text('Already have an Account?'),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Already have account?",
                              style: CustomTextStyles.contentTextStyle(
                                  ColorsResources.BLACK_54),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ));
                            },
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Log in ",
                                style: CustomTextStyles.titleTextStyle(
                                    ColorsResources.BLACK_87),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
