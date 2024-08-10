import 'package:chat_app/helper/constants/colors_resources.dart';
import 'package:chat_app/helper/constants/screen_percentage.dart';
import 'package:chat_app/helper/utills/text_styles.dart';
import 'package:chat_app/presentation/screens/main_page.dart';
import 'package:chat_app/presentation/screens/singup_screen.dart';
import 'package:chat_app/presentation/widgets/common_button.dart';
import 'package:chat_app/presentation/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            height: mediaQuerySize.height,
            width: mediaQuerySize.width,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  opacity: 0.3,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/background_chat.jpg')),
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.purple[900]!],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
              color: const Color.fromARGB(255, 0, 17, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: mediaQuerySize.height *
                            ScreenPercentage.SCREEN_SIZE_3,
                        top: mediaQuerySize.height *
                            ScreenPercentage.SCREEN_SIZE_3),
                    child: const Text(
                      'Hello\nSign in!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                            mediaQuerySize.width * 0.1,
                          ),
                          topRight:
                              Radius.circular(mediaQuerySize.width * 0.1)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(mediaQuerySize.height *
                          ScreenPercentage.SCREEN_SIZE_2),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: mediaQuerySize.height *
                                  ScreenPercentage.SCREEN_SIZE_6,
                            ),
                            CommonTextField(
                              isBorderSide: true,
                              title: 'Email',
                              hintText: 'Enter your Email',
                            ),
                            SizedBox(
                              height: mediaQuerySize.height *
                                  ScreenPercentage.SCREEN_SIZE_1.h,
                            ),
                            CommonTextField(
                              isBorderSide: true,
                              title: 'Password',
                              hintText: 'Enter your password',
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
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forget password?',
                                style: CustomTextStyles.titleTextStyle(
                                    ColorsResources.BLACK_COLOR),
                              ),
                            ),
                            SizedBox(
                              height: mediaQuerySize.height *
                                  ScreenPercentage.SCREEN_SIZE_2.h,
                            ),
                            CommonButton(
                                text: 'Login',
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainScreen(),
                                      ));
                                },
                                width: mediaQuerySize.width *
                                    ScreenPercentage.SCREEN_SIZE_100,
                                isloading: false),
                            const Text('Already have an Account?'),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Don't have account?",
                                style: CustomTextStyles.contentTextStyle(
                                    ColorsResources.BLACK_54),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ));
                              },
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  "Sign up",
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
              ],
            ),
          ),
        ));
  }
}
