import 'package:chat_app/helper/constants/colors_resources.dart';
import 'package:chat_app/helper/constants/dimentions_resources.dart';
import 'package:chat_app/helper/constants/screen_percentage.dart';
import 'package:chat_app/helper/utills/text_styles.dart';
import 'package:chat_app/presentation/widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatelessWidget {
  String name;
  int chatid = 0;
  ChatScreen({super.key, required this.name});

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
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: mediaQuerySize.height *
                          ScreenPercentage.SCREEN_SIZE_3.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            color: ColorsResources.WHITE_COLOR,
                            size: mediaQuerySize.height *
                                ScreenPercentage.SCREEN_SIZE_3.h,
                          ),
                          Text(
                            name,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.customStyle(
                              ColorsResources.WHITE_COLOR,
                            ),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            backgroundColor: ColorsResources.WHITE_COLOR,
                            child: const Icon(Icons.call),
                          ),
                          SizedBox(
                            width: mediaQuerySize.width *
                                ScreenPercentage.SCREEN_SIZE_5.w,
                          ),
                          CircleAvatar(
                            backgroundColor: ColorsResources.WHITE_COLOR,
                            child: const Icon(
                              Icons.video_call,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: mediaQuerySize.height *
                          ScreenPercentage.SCREEN_SIZE_4.h,
                    ),
                    Expanded(
                      child: Container(
                          width: mediaQuerySize.width,
                          decoration: BoxDecoration(
                              color: ColorsResources.WHITE_COLOR,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(DimensionsResource
                                      .RADIUS_2X_EXTRA_LARGE.r),
                                  topRight: Radius.circular(DimensionsResource
                                      .RADIUS_2X_EXTRA_LARGE.r))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: mediaQuerySize.height *
                                    ScreenPercentage.SCREEN_SIZE_7.h),
                            child: ListView.builder(
                              itemCount: messages.length,
                              itemBuilder: (context, index) => Align(
                                alignment: chatId[index] == 1
                                    ? Alignment.centerLeft
                                    : Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: chatId[index] == 1
                                            ? mediaQuerySize.width *
                                                ScreenPercentage.SCREEN_SIZE_3.w
                                            : mediaQuerySize.width *
                                                ScreenPercentage
                                                    .SCREEN_SIZE_12.w,
                                        right: chatid == 1
                                            ? mediaQuerySize.width *
                                                ScreenPercentage
                                                    .SCREEN_SIZE_12.w
                                            : mediaQuerySize.width *
                                                ScreenPercentage
                                                    .SCREEN_SIZE_3.w),
                                    padding: const EdgeInsets.all(
                                        DimensionsResource.PADDING_SIZE_SMALL),
                                    decoration: BoxDecoration(
                                        color: chatId[index] == 0
                                            ? Colors.pink[100]
                                            : ColorsResources.BLACK_12,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: chatId[index] == 1
                                                ? const Radius.circular(
                                                    DimensionsResource
                                                        .RADIUS_DEFAULT)
                                                : const Radius.circular(0),
                                            bottomLeft: chatId[index] == 1
                                                ? const Radius.circular(0)
                                                : const Radius.circular(
                                                    DimensionsResource
                                                        .RADIUS_DEFAULT),
                                            topRight: const Radius.circular(
                                                DimensionsResource
                                                    .RADIUS_DEFAULT),
                                            topLeft: const Radius.circular(
                                                DimensionsResource.RADIUS_DEFAULT))),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          messages[index],
                                          style:
                                              CustomTextStyles.contentTextStyle(
                                                  ColorsResources.BLACK_COLOR),
                                        ),
                                        SizedBox(
                                          height: mediaQuerySize.width *
                                              ScreenPercentage.SCREEN_SIZE_1.w,
                                        ),
                                        Text(
                                          '2:48 PM',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )

                          // child: ListView.builder(
                          //   itemCount: 10,
                          //   itemBuilder: (context, index) {
                          //     return Padding(
                          //       padding: const EdgeInsets.all(8.0),
                          //       child: Flexible(
                          //         child: Container(
                          //           decoration: BoxDecoration(
                          //               color: ColorsResources.BACKGROUND_PINK_COLOR,
                          //               borderRadius: BorderRadius.only(
                          //                   bottomRight: Radius.circular(
                          //                       DimensionsResource
                          //                           .RADIUS_2X_EXTRA_LARGE.r),
                          //                   topRight: Radius.circular(
                          //                       DimensionsResource
                          //                           .RADIUS_2X_EXTRA_LARGE.r),
                          //                   topLeft: Radius.circular(
                          //                       DimensionsResource
                          //                           .RADIUS_2X_EXTRA_LARGE.r))),
                          //           child: const Text(
                          //             'sdasdsadasdsadasdsadaa',
                          //             overflow: TextOverflow.ellipsis,
                          //           ),
                          //         ),
                          //       ),
                          //     );
                          //   },
                          // ))
                          // ,
                          ),
                    )
                  ],
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: mediaQuerySize.width.w,
                      height: mediaQuerySize.height *
                          ScreenPercentage.SCREEN_SIZE_7.h,
                      color: ColorsResources.WHITE_COLOR,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: DimensionsResource.PADDING_SIZE_SMALL,
                            right: DimensionsResource.PADDING_SIZE_SMALL,
                            bottom:
                                DimensionsResource.PADDING_SIZE_EXTRA_SMALL),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // alignment: WrapAlignment.center,
                          // direction: Axis.horizontal,
                          // crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              elevation: 2,
                              child: SizedBox(
                                width: mediaQuerySize.width *
                                    ScreenPercentage.SCREEN_SIZE_77.w,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: DimensionsResource
                                          .PADDING_SIZE_DEFAULT),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.emoji_emotions),
                                      Expanded(
                                        child: SizedBox(
                                          child: CommonTextField(
                                            borderRadius: DimensionsResource
                                                .RADIUS_2X_EXTRA_LARGE.r,
                                            title: '',
                                            isBorderSide: false,
                                            color: Colors.transparent,
                                            isBorder: true,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.attach_file)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.camera_alt_outlined))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                                width: mediaQuerySize.width *
                                    ScreenPercentage.SCREEN_SIZE_15.w,
                                height: mediaQuerySize.height *
                                    ScreenPercentage.SCREEN_SIZE_7.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        ColorsResources.BACKGROUND_PINK_COLOR),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: ColorsResources.WHITE_COLOR,
                                )),
                          ],
                        ),
                      ),
                    ))
              ],
            )),
      ),
    );
  }

  List messages = [
    'Hello',
    'yes bro?',
    'How are you?',
    'Alhamdulillah and you?',
    "Alhamdulilah thek",
    'whats going on?',
    'nothing special just getting bored and i am free from the morning and not have done my assignment',
    "and what's going on your side",
    'same as on your side',
    'hahahahahh',
    'okay bro have a nice day',
    'same to your God bless you'
  ];
  List chatId = [0, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, 0];
}
