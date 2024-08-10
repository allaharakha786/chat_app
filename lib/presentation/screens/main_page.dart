import 'package:chat_app/helper/constants/colors_resources.dart';
import 'package:chat_app/helper/constants/dimentions_resources.dart';
import 'package:chat_app/helper/constants/screen_percentage.dart';
import 'package:chat_app/helper/utills/text_styles.dart';
import 'package:chat_app/presentation/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: mediaQuerySize.height * ScreenPercentage.SCREEN_SIZE_100.h,
          width: mediaQuerySize.width * ScreenPercentage.SCREEN_SIZE_100.w,
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
              SizedBox(
                height:
                    mediaQuerySize.height * ScreenPercentage.SCREEN_SIZE_3.h,
              ),
              Padding(
                padding: const EdgeInsets.all(
                    DimensionsResource.PADDING_SIZE_DEFAULT),
                child: Text(
                  'Chat with\nyour friends',
                  style:
                      CustomTextStyles.customStyle(ColorsResources.WHITE_COLOR),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      5,
                      (index) => Padding(
                            padding: const EdgeInsets.all(
                                DimensionsResource.PADDING_SIZE_EXTRA_SMALL),
                            child: SizedBox(
                              height: mediaQuerySize.height *
                                  ScreenPercentage.SCREEN_SIZE_10.h,
                              width: mediaQuerySize.width *
                                  ScreenPercentage.SCREEN_SIZE_20.w,
                              child: Image.asset(
                                fit: BoxFit.contain,
                                icons[index],
                              ),
                            ),
                          )),
                ),
              ),
              SizedBox(
                height:
                    mediaQuerySize.height * ScreenPercentage.SCREEN_SIZE_4.h,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorsResources.WHITE_COLOR,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            DimensionsResource.RADIUS_2X_EXTRA_LARGE.r,
                          ),
                          topRight: Radius.circular(
                              DimensionsResource.RADIUS_2X_EXTRA_LARGE.r))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ChatScreen(name: 'Rakha'),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: ColorsResources.BLACK_12,
                                borderRadius: BorderRadius.circular(
                                    DimensionsResource.RADIUS_DEFAULT.r)),
                            child: ListTile(
                              leading: Stack(children: [
                                const CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('assets/images/avatar_3.png'),
                                  radius: 30,
                                ),
                                Positioned(
                                    bottom: 5,
                                    right: 4,
                                    child: Icon(
                                      size: mediaQuerySize.height *
                                          ScreenPercentage.SCREEN_SIZE_2.h,
                                      Icons.circle,
                                      color: Colors.green,
                                    ))
                              ]),
                              title: const Text('Allah Rakha'),
                              subtitle: const Text('Hi bro dummy message here',
                                  overflow: TextOverflow.ellipsis),
                              trailing: Text(
                                '2:48 PM',
                                style: CustomTextStyles.contentTextStyle(
                                    ColorsResources.BLACK_54),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> icons = [
    'assets/images/search icon.png',
    'assets/images/avatar_2.png',
    'assets/images/avatar_3.png',
    'assets/images/avatar_4.png',
    'assets/images/avatar_1.png',
  ];
}
